import networkx as nx


class NsMapping(object):

    """Class to model a NS mapping"""

    def __init__(self, ns):
        """Initializes the instance. """
        self.__ns = ns
        self.__mappingDelay = 0
        self.__vnfDelays = dict()
        self.__lnkDelays = dict()
        self.__mappings = dict()
        self.__serverMappings = dict()

        self.__vnfDelays['start'] = 0


    def __str__(self):
        """String representation of a mapping
        :returns: string

        """
        st = 'Overall delay: ' + str(self.__mappingDelay)
        st += '\nVNF mappings: '
        for vnf in self.__serverMappings:
            st += '\n  vnf:' + str(vnf) + ' --- server:' +\
                str(self.__serverMappings[vnf])
        st += '\nPaths:'
        for (vnf1, vnf2) in self.__mappings:
            st += '\n  (' + str(vnf1) + ', ' + str(vnf2) + '): ' +\
                str(self.__mappings[(vnf1, vnf2)])

        return st


    def copy(self):
        """Creates a new NsMapping object that is a copy of the current one.
            The NS reference is not copied, it is still a pointer to the NS.
        :returns: NsMapping

        """
        nsMappingCopy = NsMapping(self.__ns)
        nsMappingCopy._NsMapping__mappingDelay = self.__mappingDelay
        nsMappingCopy._NsMapping__vnfDelays = dict(self.__vnfDelays)
        nsMappingCopy._NsMapping__lnkDelays = dict(self.__lnkDelays)
        nsMappingCopy._NsMapping__mappings = dict(self.__mappings)

        return nsMappingCopy


    def getDelay(self):
        """Retrieves the NS mapping delay"""
        return self.__mappingDelay


    def setPath(self, vnf1, vnf2, path):
        """Sets the mapping path to connect vnf1 and vnf2

        :vnf1: vnf1 id
        :vnf2: vnf2 id
        :path: path between vnf1 and vnf2
        :returns: Nothing

        """
        self.__serverMappings[vnf1] = path[0][0]
        self.__serverMappings[vnf2] = path[-1][-1]
        self.__mappings[(vnf1, vnf2)] = path


    def getServerMapping(self, vnf):
        """Retrieves the server where the vnf has been mapped

        :vnf: VNF id
        :returns: None in case it has not been mapped, server id otherwise

        """
        return None if vnf not in self.__serverMappings else\
                self.__serverMappings[vnf]


    def getPath(self, vnf1, vnf2):
        """Retrieves the path to connect vnf1 and vnf2

        :vnf1: vnf1 id
        :vnf2: vnf2 id
        :returns: None in case there is no such path, a list like [(nodeA,
            nodeB), (nodeB, nodeC), ...] otherwise

        """
        return None if (vnf1, vnf2) not in self.__mappings else\
            self.__mappings[(vnf1, vnf2)]


    def setLnkDelay(self, vnf1, vnf2, delay):
        """Sets the mapping delay between vnf1 and vnf2.
        WARNING: method assumes that vnf1 delay is set

        :vnf1: vnf1 id
        :vnf2: vnf2 id
        :delay: delay between vnf1 vnf2
        :returns: Nothing

        """
        self.__lnkDelays[(vnf1, vnf2)] = delay


    def setLnkDelayAndRefresh(self, vnf1, vnf2, delay):
        """Sets the mapping delay between vnf1 and vnf2.
            It sets/refresh vnf2 delay as well.
        WARNING: method assumes that vnf1 delay is set

        :vnf1: vnf1 id
        :vnf2: vnf2 id
        :delay: delay between vnf1 vnf2
        :returns: Nothing

        """
        self.setLnkDelay(vnf1, vnf2, delay)
        aggDelay = delay + self.getVnfDelay(vnf1)

        # Refresh VNF2 delay and maximum NS delay if necessary
        vnf2Delay = self.getVnfDelay(vnf2)
        if vnf2Delay == None or (vnf2Delay != None and aggDelay > vnf2Delay):
            self.__setVnfDelay(vnf2, aggDelay)
            if aggDelay > self.__mappingDelay:
                self.__mappingDelay = aggDelay


    def __setVnfDelay(self, vnf, delay):
        """Sets the maximum delay it takes to reach vnf

        :vnf: vnf id
        :delay: maximum delay to reach vnf
        :returns: Nothing

        """
        self.__vnfDelays[vnf] = delay

    
    def getVnfDelay(self, vnf):
        """Retrieves the mapping delay to reach vnf

        :vnf: vnf id
        :returns: delay to reach vnf, or None in case it is not set

        """
        return None if vnf not in self.__vnfDelays else self.__vnfDelays[vnf]


    def getLnkDelay(self, vnf1, vnf2):
        """Retrieves the link delay between vnf1 and vnf2

        :vnf1: vnf1 id
        :vnf2: vnf2 id
        :returns: None in case mapping delay is not set
            otherwise (vnf1, vnf2) link delay

        """
        return None if (vnf1, vnf2) not in self.__lnkDelays\
                else self.__lnkDelays[(vnf1, vnf2)]
    

    def changeVnfMapping(self, vnf, prevVnfs, afterVnfs, prevDelays,
            afterDelays):
        """Changes the mapping of vnf and refresh the maximum delay of the NS,
        the delays of each link, and maximum delays of each VNF.
        
        :vnf: vnf id
        :prevVnfs: list of previous VNFs' ids
        :afterVnfs: list of next VNFs' ids
        :prevDelays: list of previous VNF' delays
        :afterDelays: list of after VNFs' delays
        :returns: Nothing
        """
        refreshed = dict()
        def DFS(accumDelay, vnf):
            """Performs a DFS to refresh delays of VNFs after vnf
            
            :accumDelay: accumulated delay to reach vnf
            :vnf: index VNF to be refreshed
            :returns: Nothing
            """
            # Refresh the VNF delay if neccessary
            vnfDelay = self.getVnfDelay(vnf)
            maxDelay = vnfDelay
            if vnf not in refreshed or (vnf in refreshed\
                    and accumDelay > vnfDelay):
                refreshed[vnf] = True
                self.__setVnfDelay(vnf, accumDelay)
                maxDelay = accumDelay
            if self.__mappingDelay < maxDelay:
                self.__mappingDelay = maxDelay

            # Recurse into next VNFs to refresh their delays
            nextVnfs = self.__ns.getNextVNFs(vnf)
            for nextVnf in nextVnfs:
                lnkDelay = self.getLnkDelay(vnf, nextVnf)
                DFS(maxDelay + lnkDelay, nextVnf)

        # Set previous links' delays and changed VNF delay
        self.__mappingDelay = -1 # force NS delay refresh
        self.__vnfDelays[vnf] = None # force VNF delay refresh
        for prevVnf, prevDelay in zip(prevVnfs, prevDelays):
            self.setLnkDelayAndRefresh(prevVnf, vnf, prevDelay)
        refreshed[vnf] = True

        # Set after links delay and refresh NS delay
        for afterVnf, afterDelay in zip(afterVnfs, afterDelays):
            self.setLnkDelay(vnf, afterVnf, afterDelay)
        DFS(self.getVnfDelay(vnf), vnf)



