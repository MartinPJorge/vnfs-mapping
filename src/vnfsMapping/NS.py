import networkx as nx

class NS(object):

    """Network Service class"""


    def __init__(self):
        """Creates empty NS instance

        """
        self.__chain = None
        self.__iterIdx = 1


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
            elif not chain.has_node(link['idA']) or
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
        return self.__chain.number_of_nodes() if self.__chain != None else -1


    def initIter(self):
        """Initializes an iterator that goes through each VNF
        :returns: Nothing

        """

        self.__iterIdx = 'start'


    def iterNext(self):
        """Retrieves the next VNFs' ids after the current one and advances the
            iterator pointer to the next id
        :returns: list of next VNFs ids (it can be 'end')

        """

        curr = self.__iterIdx if self.__iterIdx != 'start' is int else 0
        self.__iterIdx = 'end' if curr == self.getVNFsNumber() else curr + 1

        return filter(lambda node: node > curr if type(node) is int else True,
                self.__chain.neighbors(curr))


    def setChain(self, chain):
        """Sets the NS chain

        :chain: NS chain (networkx instance)
        :returns: Nothing

        """

        self.__chain = chain


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
        

