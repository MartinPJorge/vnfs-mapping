import networkx as nx


class NsMapping(object):

    """Class to model a NS mapping"""

    idCounter = 0

    def __init__(self, ns):
        """Initializes the instance. """
        self.__ns = ns
        NsMapping.idCounter += 1
        self.__id = 'mapping' + str(NsMapping.idCounter)


    def setLnkDelay(self, vnf1, vnf2, delay):
        """Sets the mapping delay between vnf1 and vnf2.
            It sets/refresh vnf2 delay as well.
        WARNING: method assumes that vnf1 delay is set

        :vnf1: vnf1 id
        :vnf2: vnf2 id
        :delay: delay between vnf1 vnf2
        :returns: Nothing

        """
        nx.set_edge_attributes(self.__ns.getChain(), self.__id + str('delay'),
                { (vnf1, vnf2): delay })
        aggDelay = delay + self.getVnfDelay(vnf1)

        vnf2Delay = self.getVnfDelay(vnf2)
        if vnf2Delay != None and aggDelay > vnf2Delay:
            self.setVnfDelay(vnf2, aggDelay)


    def setVnfDelay(self, vnf, delay):
        """Sets the maximum delay it takes to reach vnf

        :vnf: vnf id
        :delay: maximum delay to reach vnf
        :returns: Nothing

        """
        nx.set_node_attributes(self.__ns.getChain(), self.__id + str('delay'),
                { vnf: delay })

    
    def getVnfDelay(self, vnf):
        """Retrieves the mapping delay to reach vnf

        :vnf: vnf id
        :returns: delay to reach vnf, or None in case it is not set

        """
        vnfDelays = nx.get_node_attributes(self.__ns.getChain(),
                self.__id + str('delay'))

        return None if vnf not in vnfDelays else vnfDelays[vnf]


    def getLnkDelay(self, vnf1, vnf2):
        """TODO: Docstring for getLnkDelay.

        :vnf1: vnf1 id
        :vnf2: vnf2 id
        :returns: None in case mapping delay is not set
            otherwise (vnf1, vnf2) link delay

        """
        delaysDict = nx.get_edge_attributes(self.__ns.getChain(), self.__id +
                str('delay'))

        return None if (vnf1, vnf2) not in delaysDict else delaysDict[(vnf1,
            vnf2)]
    
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

    
