import networkx as nx
import networkx.algorithms.isomorphism as iso
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
        self.__serviceName = None
        self.__chain = None
        self.__iterIdx = 1
        self.__branches = None
        self.__splits = None
        self.__maxSplitW = None
        self.__prevNeighsCache = dict()
        self.__nextNeighsCache = dict()
        self.__branchHeads = dict()


    def __str__(self):
        """String representation with the NS chain
        :returns: string representation

        """

        prevIterIdx = self.__iterIdx
        self.initIter()
        neighs = True
        currVnf =  self.currIterId()
        vnfInfos = []
        linkInfos = []

        while neighs != [] and currVnf != 'end':
            neighs = self.iterNext()
            
            # VNF requirements
            if currVnf == 'start':
                vnfInfo = 'START'
            else:
                vnfData = self.getVnf(currVnf)
                vnfInfo = str(currVnf) + ':: ' + str(vnfData)
                vnfInfos.append(vnfInfo)

            # Links requirements
            for neigh in neighs:
                linkData = self.getLink(currVnf, neigh)
                linkInfo = str(currVnf) + '<-->' + str(neigh) + ':: ' +\
                    str(linkData)
                linkInfos.append(linkInfo)

            currVnf = self.currIterId()

        # Compose final string
        st = '# NS info\n'
        st += 'VNFs requirements:\n'
        for vnfInfo in vnfInfos:
            st += '  ' + vnfInfo + '\n'
        st += 'Links requirements:\n'
        for linkInfo in linkInfos:
            st += '  ' + linkInfo + '\n'

        return st
        

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

        prevs = []
        if vnfId in self.__prevNeighsCache:
            prevs += self.__prevNeighsCache[vnfId]
        else:
            neighs = self.__chain.neighbors(vnfId)
            for neigh in neighs:
                if type(neigh) == int and neigh < vnfId:
                    prevs += [neigh]
                elif neigh == 'start':
                    prevs += [neigh]

            self.__prevNeighsCache[vnfId] = prevs

        return prevs


    def getNextVNFs(self, vnfId):
        """Obtains the next VNF neighbors og vnfId

        :vnfId: VNF id from which to obtain the next neighbours
        :returns: list of all the next neighbors (this may include node)

        """
        nexts = []
        if vnfId in self.__nextNeighsCache:
            nexts += self.__nextNeighsCache[vnfId]
        else:
            neighs = self.__chain.neighbors(vnfId)

            if vnfId != 'start':
                for neigh in neighs:
                    if type(neigh) is int and neigh > vnfId:
                        nexts += [neigh]
            else:
                nexts = neighs

            self.__nextNeighsCache[vnfId] = nexts

        return nexts


    def getPrevIdx(self):
        """Obtains the previous index in the iterator
        :returns: None in case there is no previous, 'start', or a VNF index

        """
        prevIdx = None
        if self.__iterIdx == 1:
            prevIdx = 'start'
        else:
            prevIdx = self.__iterIdx - 1

        return prevIdx


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


    def setServiceName(self, name):
        """Sets the service name

        :name: service name string
        :returns: Nothing

        """
        self.__serviceName = name


    def getServiceName(self):
        """Gets the service name
        :returns: string containing the service name

        """
        return self.__serviceName


    def setBranchNum(self, branchNum):
        """Sets the number of branches in a NS chain

        :branchNum: number of branches in the chain

        """
        self.__branches = branchNum


    def setIterIdx(self, iterIdx):
        """Sets the iterator index

        :iterIdx: iterator index
        :returns: Nothing

        """
        self.__iterIdx = iterIdx


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


    def addBranchHead(self, vnf):
        """Include the vnf in the branch heads list.
        
        :vnf: vnf id of the branch head
        :returns: Nothing"""
        self.__branchHeads[vnf] = True


    def setBranchHeads(self, branchHeads):
        """Sets the branch heads of the NS chain
        
        :branchHeads: list with VNFs that are the branch heads
        :returns: Nothing"""
        for branchHead in branchHeads:
            self.__branchHeads[branchHead] = True


    def getBranchHeads(self):
        """Returns the branch heads of the NS chain
        
        :returns: list of VNF id that are branch heads"""
        return [branchHead for branchHead in self.__branchHeads]


    def isBranchHead(self, vnf):
        """Determines if the vnf is a branch head of the NS chain.
        
        :vnf: vnf id
        :returns: True/False"""
        return vnf in self.__branchHeads


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


    def getLinksTo(self, B):
        """Gets all the links arriving to B

        :B: destination VNF id
        :returns: list of networkX links arriving to VNF B

        """
        nodes = self.getChain().nodes()
        links = [self.getLink(node, B) for node in nodes]

        return filter(lambda l: l != None, links)


    def getChain(self):
        """Retrieves the NS chain
        :returns: networkx instance

        """
        return self.__chain


    def getVnf(self, vnf):
        """Obtains the requested resources of the VNF with id 'vnf'

        :vnf: VNF id
        :returns: dictionary of requested resources, None in case of error

        """
        
        if not self.__chain.has_node(vnf):
            return None
        else:
            resources = {'requirements': {}}
            resources['processing_time'] = nx.get_node_attributes(self.__chain,
                'processing_time')[vnf]
            resources['vnf_name'] = nx.get_node_attributes(self.__chain,
                'vnf_name')[vnf]
            resources['requirements'] = nx.get_node_attributes(self.__chain,
                'requirements')[vnf]

            return resources

    
    def write(self, storedName, absPath=None):
        """Writes the NS chain and saves it under the specified storedName
        directory

        :storedName: name of the directory under which the NS chain will be
            stored
        :absPath: optional parameter to specify the absolute path under which
            the NS will be stored
        :returns: Nothing

        """
        basePath = None
        if not absPath:
            basePath = nsAbsPath + '/' + storedName + '/'
        else:
            basePath = absPath + '/' + storedName + '/'
        if not os.path.exists(basePath):
            os.makedirs(basePath)
        nx.write_gml(self.__chain, basePath + 'chain.gml')

        # Write the properties as well
        props = {
            'branches': self.__branches,
            'splits': self.__splits,
            'maxSplitW': self.__maxSplitW ,
            'branchHeads': self.__branchHeads
        }
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


    def toPimrc(self, pimrc=None):
        """Translates the NS instance into a PIMRC18 JSON format.
        If pimrc parameter is provided, the info. is incorporated there.

        :pimrc: PIMRC18 dictionary
        :returns: JSON in PIMRC18 format

        """
        if not pimrc:
            pimrc = {}
        if 'vnfs' not in pimrc:
            pimrc['vnfs'] = []
        if 'services' not in pimrc:
            pimrc['services'] = []
        if 'vnf_edges' not in pimrc:
            pimrc['vnf_edges'] = []

        # Generate service name
        service_nums = [-1]
        for service in pimrc['services']:
            if 's_gen_' in service['service_name']:
                service_nums.append(int(
                    service['service_name'].split('s_gen_')[-1]))
        serviceName = 's_gen_' + str(max(service_nums) + 1)
            
        # Generate the service dictionary
        service = {
            'service_name': serviceName,
            'max_latency': self.maxDelay(),
            'traversed_vnfs': {}
        }

		# Get the traversed links
        vnf_edges = filter(lambda ve: ve[0] != 'start' and ve[1] != 'start',
            self.getChain().edges(data=True))
        for vnf_edge in vnf_edges:
            link = dict(self.getLink(vnf_edge[0], vnf_edge[1]))
            vnfAname = self.getVnf(vnf_edge[0])['vnf_name']
            vnfBname = self.getVnf(vnf_edge[1])['vnf_name']
            link['source'] = vnfAname
            link['target'] = vnfBname
            del link['prob']
            pimrc['vnf_edges'].append(link)

        # Get the VNFs inside the NS
        networkx_vnfs = filter(lambda v: v != 'start',
            self.getChain().nodes())
        nsVnfs = [self.getVnf(v) for v in networkx_vnfs]
        pimrcVnfNames = [vnf['vnf_name'] for vnf in pimrc['vnfs']]

        for (vnf, vnfId) in zip(nsVnfs, networkx_vnfs):
            pass # TODO
        	# Check that the vnf is not there
            if vnf['vnf_name'] not in pimrcVnfNames:
                pimrc['vnfs'].append({
                    'vnf_name': vnf['vnf_name'],
                    'processing_time': vnf['processing_time'],
                    'requirements': vnf['requirements']
                })

            # Traversing prob - TODO only 1 link supposed (if more tha one, it
            # is a merging and will have probs=1)
            arrivingLinks = self.getLinksTo(vnfId)
            if 'v_gen_1' in vnf['vnf_name']:
                service['traversed_vnfs'][vnf['vnf_name']] = 1
            else:
                service['traversed_vnfs'][vnf['vnf_name']] =\
                    arrivingLinks[0]['prob']
        
        pimrc['services'].append(service)

        return pimrc

    

    
    @staticmethod
    def read(storedName, absPath=None):
        """Reads a NS chain stored under the provided storedName directory

        :storedName: name of the directory under which the NS chain will be
            stored
        :absPath: optional parameter to specify the absolute path under which
            the NS will be stored
        :returns: a NS chain instance

        """
        
        basePath = 0
        if not absPath:
            basePath = nsAbsPath + '/' + storedName + '/'
        else:
            basePath = absPath + '/' + storedName + '/'
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
        branchHeads = dict()
        # branchHeads keys (the vnfs) are stored as strings, convert to int
        for vnf in props['branchHeads']:
            branchHeads[int(vnf)] = props['branchHeads'][vnf]
        ns.setBranchHeads(branchHeads)
        
        return ns


    def equal(self, ns):
        """Compares the NS with the one passed by argument

        :ns: NS instance
        :returns: True/False

        """
        same = True
        same = same and iso.is_isomorphic(self.getChain(), ns.getChain(),
                node_match=lambda n1Res, n2Res: n1Res == n2Res,
                edge_match=lambda ed1Res, ed2Res: ed1Res == ed2Res)
        same = same and self.__branches == ns._NS__branches
        same = same and self.__splits == ns._NS__splits
        same = same and self.__maxSplitW == ns._NS__maxSplitW
        same = same and self.__prevNeighsCache == ns._NS__prevNeighsCache
        same = same and self.__nextNeighsCache == ns._NS__nextNeighsCache
        same = same and self.__branchHeads == ns._NS__branchHeads

        return same

    def maxDelay(self):
        """Obtains the maximum delay to go from the first VNF to one of the
        last ones.
        :returns: maximum delay number

        """
        reach_costs = {'start': 0}

        def dfs_update(vnfId, reach_cost):
            if vnfId == 'start':
                processing_time = 0
            else:
                processing_time = self.getVnf(vnfId)['processing_time']
            if vnfId not in reach_costs:
                reach_costs[vnfId] = reach_cost
            elif reach_cost > reach_costs[vnfId]:
                reach_costs[vnfId] = reach_cost

            next_vnfs = self.getNextVNFs(vnfId)
            for next_vnf in next_vnfs:
                link = self.getLink(vnfId, next_vnf)
                dfs_update(next_vnf, reach_cost + processing_time +\
                    link['delay'])

        dfs_update('start', 0)
        max_reach = 0
        for vnfId in reach_costs:
            if reach_costs[vnfId] > max_reach:
                max_reach = reach_costs[vnfId]
        
        return max_reach


