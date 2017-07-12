import networkx as nx

class NS(object):

    """Network Service class"""


    def __init__(self):
        """Creates empty NS instance

        """
        self.__chain = None
        self.__iterIdx = 1
        self.__branches = None
        self.__splits = None


    @staticmethod
    def create(vnfs, links):
        """Initializes a Network Service instance

        :vnfs: list of dictionaries with required resources for each VNF
            [{'id', 'memory', 'disk', 'cpu'}, ...]
        :links: list of dictionaries with required resources for each link in
            the NS [{'idA', 'idB', 'bw', 'delay'}, ...]
            idA can be 'start' for the starting point
            idB can be 'end' for end point
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
            elif link['idB'] == 'end' and not chain.has_node(link['idA']):
                raise UnboundLocalError('Wrong ending VNF id')
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
        return self.__chain.number_of_nodes() -2 if self.__chain != None\
                else -1


    def initIter(self):
        """Initializes an iterator that goes through each VNF
        :returns: Nothing

        """

        self.__iterIdx = 'start'


    def currIterId(self):
        """Obtains the id for the current VNF in the iterator
        :returns: VNF id (VNF number, 'start', or 'end')

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

        # print '  iterNext -> self.__iterIdx: ' + str(self.__iterIdx)


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


    def setBranchingInfo(self, branches, splits):
        """Sets the number of branches and splits present in the NS

        :branches: TODO
        :splits: TODO
        :returns: TODO

        """
        pass


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
        

