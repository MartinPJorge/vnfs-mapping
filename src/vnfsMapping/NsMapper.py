import heapq
from NS import NS
from MultiDomain import MultiDomain as MD

class NsMapper(object):

    """A class to map NS chains in the MultiDomain graphs"""

    def __init__(self, multiDomain):
        """Initialize a NS mapper with the multi-domain graph where it will
        perform the mapping algorithms

        :multiDomain: MultiDomain instance

        """
        self.__multiDomain = multiDomain
        

    def constrainedDijkstra(self, domain, serverS, serversE, delay, bw):
        """Finds a path acomplishing network constraints from the start server
        serverS to one of the multiple end serversE. Aggregated delay is
        ensured to be less than the given as parameter, and the bw is ensured
        along the path.

        :domain: domain number
        :serverS: starting server id
        :serversE: possible ending servers ids in a dictionary {idA: _, ...}
        :delay: required delay for the path (the final path will have less)
        :bw: required bw for the path (each link will have enough bw)
        :returns: None if no mapping was founded,
            [(serverS, node1), ..., (serverN, serverE)] path

        """
        
        visited = { serverS: True }
        delay = { serverS: 0 }
        prev = {}
        Q = []
        heapq.heappush(Q, (0, serverS))

        while Q:
            nodeDelay, node = heapq.heappop(Q)

            # Lower node delay is higher than the limit => impossible to map
            if nodeDelay > delay:
                return None

            # Found end server (iterate through prevs to obtain path)
            if node in serversE:
                path = []
                filledPath = False
                
                while not filledPath:
                    path.insert(0, (prev[node], node))
                    node = prev[node]
                    if node == serverS:
                        filledPath = True
                
                return path

            neighbors = self.__multiDomain.getNodeNeighs(node)
            for neighbor in neighbors:
                linkRes = self.__multiDomain.getLinkRes(domain, node, neighbor)

                # Check if link satisfies requirements
                if linkRes['bw'] > bw\
                       and delay[node] + linkRes['delay'] < delay:
                    refreshDelay = True

                    # Neighbor already in
                    if neighbor in delay.keys() and\
                        delay[neighbor] <= delay[node] + linkRes['delay']:
                        refreshDelay = False

                    # New neighbor
                    if refreshDelay:
                        delay[neighbor] = delay[node] + linkRes['delay']
                        prev[neighbor] = node

                # Include neighbor in list
                if neighbor not in visited:
                    Q.append(neighbor)
                    visited[neighbor] = True


    def greedy(self, domain, entryServer,  ns):
        """Performs a greedy mapping for the NS chain passed as argument

        :domain: entry domain for the NS chain
        :entryServer: server entry point for the NS
        :ns: NS chain instance
        :returns: True/False if the mapping can be performed

        """
        
        ns.initIter()
        serverS = ns.currIterId()
        nextVNFs = ns.iterNext()

        paths = dict()

        while nextVNFs:
            for vnf in nextVNFs:
                res = ns.getVnf(vnf)
                link = ns.getLink(serverS, vnf)

                capable = self.__multiDomain.getCapableServers(domain,
                        res['cpu'], res['mem'], res['disk'])
                path = self.constrainedDijkstra(domain, serverS, capable,
                        link['delay'], link['bw'])

                if not path:
                    # TODO - restore resources cosumed during placement
                    return False
                else:
                    paths[serverS, vnf] = path
                
                

        


