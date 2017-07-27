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
        

    def getLastWatchDog(self):
        """Retrieves the last watch dog in the list
        :returns: ReourcesWatchDog instance, None if there are no watchdogs

        """
        return None if len(self.__watchDogs) == 1 else self.__watchDogs[-1]


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
        :returns: [None, None] if no mapping was founded,
            [ [(serverS, node1), ..., (serverN, serverE)], delay]
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
                
                return path, nodeDelay

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

        return None, None


    def randomWalk(self, domain, serverS, serversE, delay, bw):
        """Performs a random walk to find a path from serverS to a serverE
        under delay and bw constraints.

        :domain: domain number
        :serverS: starting server id
        :serversE: possible ending servers ids in a dictionary {idA: _, ...}
        :delay: required delay for the path (the final path will have less)
        :bw: required bw for the path (each link will have enough bw)
        :returns: [None, None] if no mapping was founded,
            [ [(serverS, node1), ..., (serverN, serverE)], delay]

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

        return path, aggDelay


    def smartRandomWalk(self, domain, serverS, serversE, delay, bw):
        """Performs a random walk to find a path from serverS to a serverE
        under delay and bw constraints. This random walk performs backtracking
        operations to avoid deadend roads

        :domain: domain number
        :serverS: starting server id
        :serversE: possible ending servers ids in a dictionary {idA: _, ...}
        :delay: required delay for the path (the final path will have less)
        :bw: required bw for the path (each link will have enough bw)
        :returns: [None, None] if no mapping was founded,
            [ [(serverS, node1), ..., (serverN, serverE)], delay]

        """
        def recursive(node, aggDelay, chain, st=''):
            """Recursive function to perform the backtracking approach of the
            random walks.

            :node: starting node
            :aggDelay: aggregated delay in the current path search
            :chain: set with current chain composed
            :st: string to be concatenated in debug printing
            :returns: [None, None] if no mapping was founded,
                [ [], delay ] if node==serverE,
                [(serverS, node1), ..., (serverN, serverE), delay]

            """
            if node in serversE:
                return [], aggDelay

            # Get neighbors not inside current chain
            neighbors = self.__multiDomain.getNodeNeighs(domain, node)
            neighbors = filter(lambda neigh: neigh not in chain, neighbors)
            random.shuffle(neighbors)

            for neighbor in neighbors:
                linkRes = self.__multiDomain.getLnkRes(domain, node, neighbor)
                if linkRes['bw'] >= bw and delay >= linkRes['delay'] +\
                        aggDelay:
                    # Link requirements ok, keep recursion!
                    nextChain = Set(chain)
                    nextChain.add(neighbor)
                    path, pathDelay = recursive(neighbor,
                            aggDelay + linkRes['delay'], nextChain, st + '  ')

                    if path != None:
                        return [(node, neighbor)] + path, pathDelay

            return None, None

        return recursive(serverS, 0, Set([serverS]))


    def BFS(self, domain, serverS, serversE, delay, bw, depth=None):
        """Performs a BFS to find possible paths from serverS to any serverE
        under the delay and bw requirements.

        :domain: domain number
        :serverS: starting server id
        :serversE: possible ending servers ids in a dictionary {idA: _, ...}
        :delay: required delay for the path (the final path will have less)
        :bw: required bw for the path (each link will have enough bw)
        :depth: specify limit depth for searching
        :returns: [None, None] if no mapping was founded,
            [ [(serverS, node1), ..., (serverN, serverE), delay]

        """
        toVisit = [(serverS, 0, [], Set([serverS]))]
        keepVisiting = True
        i = 0

        while keepVisiting:
            nextToVisit = []
            keepVisiting = False if depth != None and i > depth else True

            # Visit and add neighbors
            while len(toVisit) > 0 and keepVisiting:
                # Get curr node and neighbors
                node, aggDelay, chain, chainSet = toVisit[0]
                if node in serversE:
                    return chain, aggDelay
                del toVisit[0]
                neighbors = self.__multiDomain.getNodeNeighs(domain, node)
                neighbors = filter(lambda neigh: neigh not in chainSet,
                        neighbors)

                # Insert neighbors
                for neighbor in [n for n in neighbors if n not in chainSet]:
                    linkRes = self.__multiDomain.getLnkRes(domain, node, neighbor)
                    if linkRes['bw'] >= bw and\
                            aggDelay + linkRes['delay'] <= delay:
                        newChainSet = Set(chainSet)
                        newChainSet.add(neighbor)
                        nextToVisit += [(neighbor,
                            aggDelay + linkRes['delay'],
                            list(chain) + [(node, neighbor)], newChainSet)]

            toVisit = nextToVisit
            keepVisiting = len(toVisit) > 0
            i += 1
    
        return None, None


    def greedy(self, domain, entryServer, ns, method='Dijkstra', depth=None):
        """Performs a greedy mapping for the NS chain passed as argument

        :domain: entry domain for the NS chain
        :entryServer: server entry point for the NS
        :ns: NS chain instance
        :method: search method between VNFs - ['Dijkstra', 'BFS',
            'backtracking', 'random']
        :depth: maximum search depth for 'BFS'
        :returns: [ [(node1, node2), ..., (nodeN, nodeN+1)], mappings, delay],
            where mappings is a dictionary like { vnf1: server1, ... };
            Or [ [], mappings ]

        """
        
        ns.initIter()
        vnfS = ns.currIterId()
        serverS = entryServer
        nextVNFs = ns.iterNext()
        watchDog = WD(self.__multiDomain, ns, domain)
        mappings = dict()
        fullPath = []
        totalDelay = 0

        while nextVNFs:
            for vnf in nextVNFs:
                res = ns.getVnf(vnf)
                link = ns.getLink(vnfS, vnf)

                # VNF already mapped, force path to reach mapped server
                capable = None
                if vnf in mappings:
                    capable = [mappings[vnf]]
                else:
                    capable = self.__multiDomain.getCapableServers(domain,
                            res['cpu'], res['memory'], res['disk'])

                # If last VNF server can contain it, place it there
                path, pathDelay = None, 0
                if serverS in capable:
                    mappings[vnf] = serverS
                    watchDog.watch(vnfS, vnf, [(serverS, serverS)])
                    path = [(serverS, serverS)]
                else:
                    if method == 'Dijkstra':
                        path, pathDelay = self.constrainedDijkstra(domain,
                                serverS, capable, link['delay'], link['bw'])
                    elif method == 'BFS':
                        path, pathDelay = self.BFS(domain, serverS,
                                capable, link['delay'], link['bw'], depth)
                    elif method == 'backtracking':
                        path, pathDelay = self.smartRandomWalk(domain, serverS,
                                capable, link['delay'], link['bw'])
                    else:
                        path, pathDelay = self.randomWalk(domain, serverS,
                                capable, link['delay'], link['bw'])

                if not path:
                    watchDog.unWatch() # free previously allocated resources
                    return [], mappings, totalDelay
                else:
                    mappings[vnf] = path[-1][-1] # Final server
                    watchDog.watch(vnfS, vnf, path)
                    fullPath += path
                    totalDelay += pathDelay
 
            # Next VNFs
            vnfS = ns.currIterId()
            serverS = mappings[vnfS]
            nextVNFs = ns.iterNext()

        # Add the watch dog to the list of mapped NSs
        self.__watchDogs.append(watchDog)

        return fullPath, mappings, totalDelay


    def popurri(self, domain, entryServer, ns, method='Dijkstra', depth=None):
        """Popurri mapping is performed by choosing randomly servers and
        placing VNFs in those servers. Then a routing is performed between the
        chosen servers.

        :domain: entry domain for the NS chain
        :entryServer: server entry point for the NS
        :ns: NS chain instance
        :method: search method between VNFs - ['Dijkstra', 'BFS',
            'backtracking', 'random']
        :depth: maximum search depth for 'BFS'
        :returns: [(node1, node2), ..., (nodeN, nodeN+1)] path or empty list

        """
        pass


    def tabu(self, domain, entryServer, ns, block, iters, initial='greedy',
            method='Dijkstra', depth=None):
        """Performs a tabu search to map the NS in the underneath domain view.

        :domain: entry domain for the NS chain
        :entryServer: server entry point for the NS
        :ns: NS chain instance
        :block: number of rounds the last VNF placement will be blocked
        :iters: number of iterations over the whole the NS chain
        :initial: method used to obtain the initial solution
        :method: search method between VNFs - ['Dijkstra', 'BFS',
            'backtracking', 'random']
        :depth: maximum search depth for 'BFS'
        :returns: [(node1, node2), ..., (nodeN, nodeN+1)] path or empty list

        """
        initialSol = None
        mappings = None
        blocks = dict()
        iterators = dict()
        currSol, bestDelay = None, None
        vnfsNum = ns.getVNFsNumber()
        currVnf = None

        if initial == 'greedy':
            currSol, mappings, bestDelay = self.greedy(domain, entryServer,
                    ns, method=method, depth=depth)
        else:
            # TODO - other methods to retrieve an initial solution
            pass

        if initialSol == []:
            return []

        # Initialize blocking and iterators dictionaries
        ns.initIter()
        while ns.iterNext() != []:
            vnf = ns.currIterId()
            capable = self.__multiDomain.getCapableServers(domain,
                    vnfRes['cpu'], vnfRes['memory'], vnfRes['disk'])
            for server in capable:
                blocks[vnf][server] = False if server != mappings[vnf]\
                    else iters
            iterators[vnf]['it'] = 0
            iterators[vnf]['len'] = len(capable) 

        ns.initIter()
        for _ in range(iters * vnfsNum):
            # Obtain current VNFs to force their new mapping
            ns.iterNext()
            currVnf = ns.currIterId()
            currServer = mappings[currVnf] if currVnf != 'start'\
                    else entryServer
            if currVnf == 'end':
                ns.initIter()
                ns.iterNext()
                currVnf = ns.currIterId()

            # Obtain info. to perform new mapping
            currCapables = dict()
            for server in blocks[currVnf].keys():
                if not blocks[currVnf][server]:
                    currCapables[server] = True

            # Obtain servers where previous vnfs are mapped
            prevMappings = []
            prevDelays = []
            prevServers = []
            prevVnfs = ns.prevVNFs(currVnf)
            for vnf in prevVnfs:
                prevServers += [mappings[vnf] if vnf != 'start'\
                        else entryServer]

            # Remap with previous VNFs
            keepSearch, i = True, 0
            while keepSearch and i < len(mappedVnfs):
                prevVnf = prevVnfs[i]
                prevServer = prevServers[i]
                linkRes = ns.getLink(prevVnf, currVnf)

                # Perform the new mapping
                path, pathDelay = None, None
                if method == 'Dijkstra':
                    path, pathDelay = self.constrainedDijkstra(domain,
                            prevServer, currCapables, linkRes['delay'],
                            linkRes['bw'])
                elif method == 'BFS':
                    path, pathDelay = self.BFS(domain, prevServer,
                            currCapables, linkRes['delay'], linkRes['bw'])
                elif method == 'backtracking':
                    path, pathDelay = self.smartRandomWalk(domain, prevServer,
                             currCapables, linkRes['delay'], linkRes['bw'])
                elif method == 'random':
                    path, pathDelay = self.randomWalk(domain, prevServer,
                            currCapables, linkRes['delay'], linkRes['bw'])

                if path == None:
                    keepSearch = False
                else:
                    currCapables = [path[-1][-1]]
                    prevMappings.append(path)
                    prevDelays.append(pathDelay)
                    i += 1

            # currCapables=[endServer] if a path prev---curr has been found
            mappedServer = None
            if len(currCapables) == 1:
                mappedServer == currCapables[0]
                blocks[nextVnf][mappedServer] = iters * vnfsNum


            # Search path from new vnf to next ones
            prevSuccess = len(prevMappings) == len(prevVnf) and\
                    None not in prevMappings
            afterVnfs = ns.getNextVNFs(currVnf)
            afterMappings, afterDelays, afterServers = [], [], []

            if prevSuccess and afterVnfs != []:
                # Obtain servers where next vnfs are mapped
                for vnf in afterVnfs:
                    afterServers += [mappings[vnf]]

                keepSearch, i = True, 0
                while keepSearch and i < len(afterVnfs):
                    linkRes = ns.getLink(currVnf, afterVnfs[i])

                    if method == 'Dijkstra':
                        afterPath, afterDelay = self.constrainedDijkstra(
                                domain, prevServer, [afterServers[i]],
                                linkRes['delay'], linkRes['bw'])
                    elif method == 'BFS':
                        afterPath, afterDelay = self.BFS(domain, prevServer,
                                [afterServers[i]], linkRes['delay'],
                                linkRes['bw'])
                    elif method == 'backtracking':
                        afterPath, afterDelay = self.smartRandomWalk(domain,
                                prevServer, [afterServers[i]],
                                linkRes['delay'], linkRes['bw'])
                    elif method == 'random':
                        afterPath, afterDelay = self.randomWalk(domain,
                                prevServer, [afterServers[i]],
                                linkRes['delay'], linkRes['bw'])
                    
                    if afterPath == None:
                        keepSearch = False
                    else:
                        afterMappings.append(afterPath)
                        afterDelays.append(afterDelay)
                        i += 1

            # All remappings successfully performed
            if prevSuccess and len(afterMappings) == len(afterVnfs):

                lastWatchDog = self.getLastWatchDog()
                for prevVnf, prevMap in zip(prevVnfs, prevMappings):
                    lastWatchDog.changeConnection(prevVnf, currVnf, prevMap)
                for afterVnf, afterMap in zip(afterVnfs, afterMappings):
                    lastWatchDog.changeConnection(currVnf, afterVnf, afterMap)

                # TODO - refresh NsMapping instance
                #      - retrieve new delay to see if it is best solution

            # TODO - rotate the capable servers iterator, so next trial is not
            #        the same as last one (lo hablado con Carlos [CJBC])
                    

            # Decrement blocking counters
            for vnf in blocks.keys():
                for server in blocks[vnf].keys():
                    blocked = blocks[vnf][server]
                    blocks[vnf][server] = blocked - 1 if blocked else False


    # TODO - is this neccesary?
    def modifyMappedPath(self, ns, vnf, server, mapping,
            path, prevPath, afterPath):
        """Obtain a new mapping path taking into account that vnf is placed
        under the new server.

        :ns: NS instance
        :vnf: VNF index that have been remapped
        :server: new server where the vnf is placed
        :mapping: dictionary with vnf server mappings { vnf1: serverA, ... }
        :path: list with ns placed path [(1, 2), (2, 4), (4, 6), (6, 6), ...]
        :prevPath: nodes path until the VNF server is reached
        :afterPath: nodes path to reach next mapped server from VNF server
        :returns: the path corresponding to the new mapping
        :raise: UnboundLocalError in case previous and after paths are not ok

        """
        vnfs = len(mapping.keys())
        if prevPath[-1][-1] != server:
            raise UnboundLocalError('modifyMappedPath: last node in prevPath\
 is not the new mapped server')
        elif vnf < vnfs and afterPath[0][0] != server:
            raise UnboundLocalError('modifyMappedPath: first node in afterPath\
 is not the new mapped server')
        elif vnf > 1 and mapping[vnf - 1] != prevPath[0][0]:
            raise UnboundLocalError('modifyMappedPath:: first node in prevPath\
 is not the server where previous vnf is mapped')
        elif vnf < vnfs and mapping[vnf + 1] != afterPath[-1][-1]:
            raise UnboundLocalError('modifyMappedPath:: last node in\
 afterPath is not the server where next vnf is mapped')

        # Aux variables
        pathIdx = 0
        positions = dict()
        iterIdx = ns.currIterId()
        ns.initIter()
        ns.iterNext()
        currVnf = ns.currIterId()

        # Obtain the positions of each placement within the path chain
        while currVnf != 'end' and currVnf != vnf + 2:
            while mapping[currVnf] != path[pathIdx][-1]:
                pathIdx += 1

            positions[currVnf] = pathIdx
            ns.iterNext()
            currVnf = ns.currIterId()

        # Copy until previous path
        newPath = []
        if vnf > 1:
            newPath = path[0:positions[vnf - 1] + 1]
    
        # Copy new previous and after paths
        newPath += prevPath + afterPath

        # Copy remaining path tail
        if vnf != vnfs:
            newPath += path[positions[vnf + 1]+1:]

        return newPath


    def freeMappings(self):
        """Frees all the resources mapped to NSs
        :returns: Nothing

        """
        for watchDog in self.__watchDogs:
            watchDog.unWatch()


