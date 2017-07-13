import networkx as nx
import json
import os

# Global variable for the project absolute path
absPath = os.path.abspath(os.path.dirname(__file__))
nsAbsPath = '/'.join(absPath.split('/')[:-2]) + '/ns-chains'


class NS(object):

    """Network Service class"""


    def __init__(self):
        """Creates empty NS instance

        """
        self.__chain = None
        self.__iterIdx = 1
        self.__branches = None
        self.__splits = None
        self.__maxSplitW = None


    @staticmethod
    def create(vnfs, links):
        """Initializes a Network Service instance

        :vnfs: list of dictionaries with required resources for each VNF
            [{'id', 'memory', 'disk', 'cpu'}, ...]
        :links: list of dictionaries with required resources for each link in
            the NS [{'idA', 'idB', 'bw', 'delay'}, ...]
            idA can be 'start' for the starting point
        :returns: a NS instance

        """

        # Create NS chain graph
        chain = nx.Graph()
        for vnf in vnfs:
            chain.add_node(vnf['id'], memory=vnf['memory'], disk=vnf['disk'],
                cpu=vnf['cpu'])
        
        for link in links:
            # Check if start/end VNF is correct
            if link['idA'] == 'start' and not chain.has_node(link['idB']):
                raise UnboundLocalError('Wrong starting VNF id!')
            # Check if link endpoints are correct
            elif not chain.has_node(link['idA']) or\
                not chain.has_node(link['idB']):
                raise UnboundLocalError('Link endpoint is a non-existing\
 VNF!')
            else:
                chain.add_edge(link['idA'], link['idB'], bw=link['bw'],
                    delay=link['delay'])

        ns = NS()
        ns.setChain(chain)

        return ns


    def getVNFsNumber(self):
        """Obtains the number of VNFs present in the NS chain
        :returns: number of nodes or -1 if the chain is not set yet

        """
        return self.__chain.number_of_nodes() -1 if self.__chain != None\
                else -1


    def initIter(self):
        """Initializes an iterator that goes through each VNF
        :returns: Nothing

        """

        self.__iterIdx = 'start'


    def currIterId(self):
        """Obtains the id for the current VNF in the iterator
        :returns: VNF id (VNF number or 'start')

        """
        return self.__iterIdx

    
    def prevVNFs(self, vnfId):
        """Obtains the previous vnfs of a certain one

        :vnfId: VNF id from which to obtain the previous neighbours
        :returns: list of all the previous neighbors (this may include 'start'
            node)

        """
        if vnfId == 'start':
            return []

        neighs = self.__chain.neighbors(vnfId)
        prevs = []
        for neigh in neighs:
            if type(neigh) is int and neigh < vnfId:
                prevs += [neigh]
            elif type(neigh) is str and neigh == 'start':
                prevs += [neigh]

        return prevs


    def iterNext(self):
        """Retrieves the next VNFs' ids after the current one and advances the
            iterator pointer to the next id
        :returns: list of next VNFs ids (it can be [] if curr VNF is last one)

        """

        neighs = []

        # Starting node
        if self.__iterIdx == 'start':
            self.__iterIdx = 1
            neighs = self.__chain.neighbors('start')
        # Last VNF
        elif self.__iterIdx == self.getVNFsNumber():
            self.__iterIdx = 'end'
        # Intermediate node
        else:
            neighs = filter(lambda nd: type(nd) is int,\
                    self.__chain.neighbors(self.__iterIdx))
            neighs = filter(lambda nd: nd > self.__iterIdx, neighs)
            self.__iterIdx += 1

        return neighs


    def getBranchNum(self):
        """Obtains the number of branches
        :returns: int, None if not set

        """

        return self.__branches


    def getSplitsNum(self):
        """Obtains the number of splits
        :returns: int, None if not set

        """
        
        return self.__splits


    def getMaxSplitW(self):
        """Obtains the maximum split within the chain
        :returns: int, None if not set

        """
        
        return self.__maxSplitW


    def setBranchNum(self, branchNum):
        """Sets the number of branches in a NS chain

        :branchNum: number of branches in the chain

        """
        self.__branches = branchNum


    def setSplitsNum(self, splits):
        """Sets the number of splits of the NS chain

        :splits: number of splits

        """
        self.__splits = splits


    def setChain(self, chain):
        """Sets the NS chain

        :chain: NS chain (networkx instance)
        :returns: Nothing

        """

        self.__chain = chain


    def setMaxSplitW(self, maxSplitW):
        """Sets the maximum split width

        :maxSplitW: the split within the chain with the maximum width
        :returns: Nothing

        """
        
        self.__maxSplitW = maxSplitW


    def getLink(self, A, B):
        """Gets the (A,B) link resources

        :A: first VNF
        :B: second VNF
        :returns: the link resources, None in case of error

        """

        if not self.__chain.has_edge(A, B):
            return None
        else:
            return self.__chain.get_edge_data(A, B)


    def getVnf(self, vnf):
        """Obtains the requested resources of the VNF with id 'vnf'

        :vnf: VNF id
        :returns: dictionary of requested resources, None in case of error

        """
        
        if not self.__chain.has_node(vnf):
            return None
        else:
            resources = dict()
            resources['memory'] = nx.get_node_attributes(self.__chain,
                'memory')[vnf]
            resources['disk'] = nx.get_node_attributes(self.__chain,
                'disk')[vnf]
            resources['cpu'] = nx.get_node_attributes(self.__chain,
                'cpu')[vnf]

            return resources

    
    def write(self, storedName):
        """Writes the NS chain and saves it under the specified storedName
        directory

        :storedName: name of the directory under which the NS chain will be
            stored
        :returns: Nothing

        """

        basePath = nsAbsPath + '/' + storedName + '/'
        if not os.path.exists(basePath):
            os.makedirs(basePath)
        nx.write_gml(self.__chain, basePath + 'chain.gml')

        # Write the properties as well
        props = { 'branches': self.__branches, 'splits': self.__splits,
                'maxSplitW': self.__maxSplitW }
        with open(basePath + 'props.json', 'w') as f:
            json.dump(props, f)
    

    def compareVNFs(self, vnf1, vnf2):
        """Compares two VNFs

        :vnf1: VNF 1 obtained with the getVnf() method
        :vnf2: VNF 2 obtained with the getVnf() method
        :returns: True/False

        """
        
        return vnf1['memory'] == vnf2['memory'] and\
                vnf1['disk'] == vnf2['disk'] and\
                vnf1['cpu'] == vnf2['cpu']


    def compareLinks(self, link1, link2):
        """Compares two NS chain links

        :link1: link 1 obtained with getLink() method
        :link2: link 2 obtained with getLink() method
        :returns: True/False

        """
        
        return link1['bw'] == link2['bw'] and link1['delay'] == link2['delay']


    def compare(self, ns):
        """Compares the NS chain with the other ones passed by argument.
        All nodes, links and properties must be the same

        :ns: other NS chain to compare with
        :returns: True/False

        """
        
        equal = True
        neighs = ['_']
        self.initIter()
        ns.initIter()

        while equal and neighs != []:
            currId1 = self.currIterId()
            currId2 = ns.currIterId()
            neighs = neighs1 = self.iterNext()
            neighs2 = ns.iterNext()

            # Check if neighbors are the same
            if currId1 != currId2:
                equal = False
            if len(neighs1) != len(neighs2):
                equal = False
            elif False in [neigh1 in neighs2 for neigh1 in neighs1]:
                equal = False
            
            # Check if current VNFs are the same
            if type(currId1) is not str:
                eqVnfs = self.compareVNFs(self.getVnf(currId1),
                        ns.getVnf(currId2))
                if not eqVnfs:
                    equal = False

            # Compare if links are the same
            i = 0
            eqLinks = True
            while eqLinks and i < len(neighs1):
                neigh1 = neighs1[i]

                link1 = self.getLink(currId1, neigh1)
                link2 = ns.getLink(currId1, neigh1)

                eqLinks = self.compareLinks(link1, link2)
                i += 1
            if not eqLinks:
                equal = False

        # Check local variables
        if self.getBranchNum() != ns.getBranchNum() or\
                self.getSplitsNum() != ns.getSplitsNum() or\
                self.getMaxSplitW() != ns.getMaxSplitW():
            equal = False
                
        return equal

    
    @staticmethod
    def read(storedName):
        """Reads a NS chain stored under the provided storedName directory

        :storedName: name of the directory under which the NS chain will be
            stored
        :returns: a NS chain instance

        """
        
        basePath = nsAbsPath + '/' + storedName + '/'
        props = None

        # Read from files
        with open(basePath + 'props.json', 'r') as f:
            props = json.load(f)
        chain = nx.read_gml(basePath + 'chain.gml')
        
        # Instance the NS chain
        ns = NS()
        ns.setChain(chain)
        ns.setBranchNum(props['branches'])
        ns.setSplitsNum(props['splits'])
        ns.setMaxSplitW(props['maxSplitW'])
        
        return ns

