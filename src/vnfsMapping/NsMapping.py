import networkx as nx


class NsMapping(object):

    """Class to model a NS mapping"""

    def __init__(self):
        """Initializes the NS mapping graph, and adds the 'start' node """
        self.__mapping = nx.Graph()
        self.__mapping.add_node('start')
        self.__delays = dict()
        self.__linkDelays = dict()
        self.__previous = dict()
        self.__nexts = { 'start': [] }


    def insertVnf(self, prevVnf, vnf, delay):
        """Inserts the VNF in the mapping graph

        :prevVnf: previous, and already inserted, VNFs
        :vnf: VNF to be inserted
        :delay: delay between the previous VNFs and the inserted one
        :returns: Nothing

        """
        totalDelay = self.__delays[prevVnf] + delay

        if (vnf in self.__delays and totalDelay > self.__delays[vnf]) or\
                vnf not in self.__delays:
            self.__delays[vnf] = totalDelay

        if vnf not in self.__previous:
            self.__previous[vnf] = []
        self.__previous[vnf] += [prevVnf]
        self.__nexts[prevVnf] += [vnf]
        self.__linkDelays[(prevVnf, vnf)] = delay

    
    def changeVnfMapping(self, prevVnf, nextVnf, vnf, prevDelay, nextDelay):
        """Changes the VNF mapping and refreshes the NS mapping delay

        :prevVnf: TODO
        :nextVnf: TODO
        :vnf: TODO
        :prevDelay: TODO
        :nextDelay: TODO
        :returns: TODO

        """
        pass

    
