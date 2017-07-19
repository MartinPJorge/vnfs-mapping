import heapq
import random
from sets import Set
from ResourcesWatchDog import ResourcesWatchDog as WD
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
        self.__watchDogs = []
        

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
        
        delays = { serverS: 0 }
        prev = {}
        Q = []
        heapq.heappush(Q, (0, serverS))

        while Q:
            nodeDelay, node = heapq.heappop(Q)

            # Lower node delay is higher than the limit => impossible to map
            # TODO - I think this situation isn't encountered: edges filtered
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

            neighbors = self.__multiDomain.getNodeNeighs(domain, node)
            for neighbor in neighbors:
                linkRes = self.__multiDomain.getLnkRes(domain, node, neighbor)

                # Check if link satisfies requirements
                if linkRes['bw'] >= bw\
                       and delays[node] + linkRes['delay'] <= delay:

                    # New neighbor
                    if neighbor not in delays:
                        delays[neighbor] = delays[node] + linkRes['delay']
                        heapq.heappush(Q, (delays[neighbor], neighbor))
                        prev[neighbor] = node

                    # Already visited, better path
                    elif delays[node] + linkRes['delay'] < delays[neighbor]:
                        neighIdx = Q.index((delays[neighbor], neighbor))
                        delays[neighbor] = delays[node] + linkRes['delay']
                        Q[neighIdx] = (delays[neighbor], neighbor)
                        heapq.heapify(Q)
                        prev[neighbor] = node

        return None


    def randomWalk(self, domain, serverS, serversE, delay, bw):
        """Performs a random walk to find a path from serverS to a serverE
        under delay and bw constraints.

        :domain: domain number
        :serverS: starting server id
        :serversE: possible ending servers ids in a dictionary {idA: _, ...}
        :delay: required delay for the path (the final path will have less)
        :bw: required bw for the path (each link will have enough bw)
        :returns: None if no mapping was founded,
            [(serverS, node1), ..., (serverN, serverE)] path

        """
        path = []
        inPath = { serverS: True }
        keepWalking = True
        node = serverS
        aggDelay = 0

        while keepWalking:
            neighbors = self.__multiDomain.getNodeNeighs(domain, node)
            neighbors = filter(lambda neigh: neigh not in inPath, neighbors)
            random.shuffle(neighbors)

            # Search a reachable neighbor
            foundNeigh = False
            neighbor = None
            i = 0
            while not foundNeigh and i < len(neighbors):
                neighbor = neighbors[i]
                linkRes = self.__multiDomain.getLnkRes(domain, node, neighbor)
                if linkRes['bw'] >= bw and delay >= linkRes['delay'] +\
                        aggDelay:
                    foundNeigh = True
                    aggDelay += linkRes['delay']
                    inPath[neighbor] = True
                i += 1

            # Stop if neighbor inside final ones or no reachable neighbor
            keepWalking = False if not foundNeigh or neighbor in serversE\
                    else True
            path += [(node, neighbor)] if foundNeigh else []
            node = neighbor

        # Check if final server have been reached
        if len(path) < 1 or path[-1][-1] not in serversE:
            path = None

        return path


    def smartRandomWalk(self, domain, serverS, serversE, delay, bw):
        """Performs a random walk to find a path from serverS to a serverE
        under delay and bw constraints. This random walk performs backtracking
        operations to avoid deadend roads

        :domain: domain number
        :serverS: starting server id
        :serversE: possible ending servers ids in a dictionary {idA: _, ...}
        :delay: required delay for the path (the final path will have less)
        :bw: required bw for the path (each link will have enough bw)
        :returns: None if no mapping was founded,
            [(serverS, node1), ..., (serverN, serverE)] path

        """
        def recursive(md, node, aggDelay, serversE, chain, delay, bw, st=''):
            """Recursive function to perform the backtracking approach of the
            random walks.

            :md: MultiDomain instance
            :node: starting node
            :aggDelay: aggregated delay in the current path search
            :serversE: possible ending servers ids in a dictionary {idA: _, ..}
            :chain: set with current chain composed
            :delay: required delay for the path (the final path will have less)
            :bw: required bw for the path (each link will have enough bw)
            :st: string to be concatenated in debug printing
            :returns: [] if no mapping was founded or node==serverE,
                [(serverS, node1), ..., (serverN, serverE)] path

            """
            if node in serversE:
                # print st + 'final one encountered!'
                return []

            # Get neighbors not inside current chain
            neighbors = md.getNodeNeighs(domain, node)
            neighbors = filter(lambda neigh: neigh not in chain, neighbors)
            random.shuffle(neighbors)
            # print st + 'try with node=' + str(node) + ' neighbors=' +\
            #     str(neighbors) + ' aggDelay=' + str(aggDelay)
            # print st + 'chain=' + str(chain)

            for neighbor in neighbors:
                linkRes = md.getLnkRes(domain, node, neighbor)
                # print st + 'let\'s see neighbor=' + str(neighbor) + ' bw=' +\
                #     str(linkRes['bw']) + ', delay=' + str(linkRes['delay']) +\
                #     ' have aggDelay=' + str(aggDelay)
                if linkRes['bw'] >= bw and delay >= linkRes['delay'] +\
                        aggDelay:
                    # Link requirements ok, keep recursion!
                    nextChain = Set(chain)
                    nextChain.add(neighbor)
                    path = recursive(md, neighbor, aggDelay + linkRes['delay'],
                            serversE, nextChain, delay, bw, st + '  ')

                    if path != None:
                        return [(node, neighbor)] + path

            return None

        path = recursive(self.__multiDomain, serverS, 0, serversE,
                Set([serverS]), delay, bw)
        return None if path == [] else path



    def greedy(self, domain, entryServer,  ns, method='Dijkstra'):
        """Performs a greedy mapping for the NS chain passed as argument

        :domain: entry domain for the NS chain
        :entryServer: server entry point for the NS
        :ns: NS chain instance
        :method: search method between VNFs
        :returns: [(node1, node2), ..., (nodeN, nodeN+1)] path or empty list

        """
        
        ns.initIter()
        vnfS = ns.currIterId()
        serverS = entryServer
        nextVNFs = ns.iterNext()
        watchDog = WD(self.__multiDomain, ns, domain)
        mappings = dict()
        fullPath = []

        while nextVNFs:
            for vnf in nextVNFs:
                res = ns.getVnf(vnf)
                link = ns.getLink(vnfS, vnf)

                capable = self.__multiDomain.getCapableServers(domain,
                        res['cpu'], res['memory'], res['disk'])

                # If last VNF server can contain it, place it there
                if serverS in capable:
                    mappings[vnf] = serverS
                    watchDog.watch(vnfS, vnf, [(serverS, serverS)])
                    path = [(serverS, serverS)]
                else:
                    if method == 'Dijkstra':
                        path = self.constrainedDijkstra(domain, serverS,
                                capable, link['delay'], link['bw'])
                    else:
                        path = self.randomWalk(domain, serverS, capable,
                                link['delay'], link['bw'])

                if not path:
                    watchDog.unWatch() # free previously allocated resources
                    return []
                else:
                    mappings[vnf] = path[-1][-1] # Final server
                    watchDog.watch(vnfS, vnf, path)
                    fullPath += path
                
            # Next VNFs
            vnfS = ns.currIterId()
            serverS = mappings[vnfS]
            nextVNFs = ns.iterNext()

        # Add the watch dog to the list of mapped NSs
        self.__watchDogs.append(watchDog)

        return fullPath

        
    def freeMappings(self):
        """Frees all the resources mapped to NSs
        :returns: Nothing

        """
        for watchDog in self.__watchDogs:
            watchDog.unWatch()


