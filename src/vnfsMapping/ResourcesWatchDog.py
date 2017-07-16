from NS import NS
from MultiDomain import MultiDomain as MD

class ResourcesWatchDog(object):

    """Class to monitor the resources consumption during mapping"""

    def __init__(self, multiDomain, ns, domain):
        """Initializes the watch dog to with the multiDomain, NS and domain
        resources that is going to take care of

        :multiDomain: MultiDomain instance
        :ns: NS instance
        :domain: domain index

        """
        self.__multiDomain = multiDomain
        self.__ns = ns
        self.__domain = domain
        self.__watchingPaths = []
        self.__watchingVnfs = dict()
        

    def watch(self, vnf1, vnf2, path):
        """Consumes the resources along the path between vnf1 and vnf2, and
        the server resources for vnf2. ndB in the path is the server where
        vnf2 resources are located. ndB in the path is the server where
        vnf2 resources are located.

        :vnf1: id of vnf1
        :vnf2: id of vnf2
        :path: links between both domains [(nd1, nd2), ..., (ndA, ndB)]
        :returns: Nothing

        """
        nsLinkBw = self.__ns.getLink(vnf1, vnf2)['bw']

        # Decrease available bandwidth
        for (nodeA, nodeB) in path:
            self.__multidomain.incrlnkresource(self.__domain, nodeA, nodeB,
                    'bw', -1 * nslinkBw)

        # Alloc server resources
        if vnf2 not in self.__watchingVnfs:
            server = path[-1][-1]
            vnfRes = self.__ns.getVnf(vnf2)
            self.__incrServVNFsRes(vnfRes, server, decrease=True)
            self.__watchingVnfs[vnf2] = server

        # Add the watched path and server (vnf2)
        self.__watchingPaths.append((vnf1, vnf2, path))
        

    def unWatch(self):
        """Releases all watched resources
        :returns: Nothing

        """
        # Release VNFs resources
        for vnf in self.__watchingVnfs.keys():
            server = self.__watchingVnfs[vnf]
            vnfRes = self.__ns.getVnf(vnf)
            self.__incrServVNFsRes(vnfRes, server)

        # Release link resources
        for (vnf1, vnf2, path) in self.__watchingPaths:
            nsLinkBw = self.__ns.getLink(vnf1, vnf2)['bw']
            for (nodeA, nodeB) in path:
                self.__multidomain.incrLnkResource(self.__domain, nodeA,
                        nodeB, 'bw', nslinkBw)

        self.__watchingVnfs = dict()
        self.__watchingPaths = []
                


    def __incrServVNFsRes(self, vnfRes, server, decrease=False):
        """Increases/decreases the vnf resources used in the server

        :vnfRes: dictionary with vnf resources
        :server: server id in the domain view
        :decrease: False/True to increase or decrease resources
        :returns: Nothing

        """
        coef = -1 if decrease else 1
        self.__multiDomain.incrServerResource(self.__domain, server,
                'cpu', coef * vnfRes['cpu'])
        self.__multiDomain.incrServerResource(self.__domain, server,
                'memory', coef * vnfRes['memory'])
        self.__multiDomain.incrServerResource(self.__domain, server,
                'disk', coef * vnfRes['disk'])
    


