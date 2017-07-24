import sys
import os
import random
import networkx as nx

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../../src')))
from vnfsMapping import MultiDomain as MD
from vnfsMapping import NS
from vnfsMapping import NsMapper as NSM
from vnfsMapping import NsGenerator as NSG


class NsMapperTester(object):

    """Class for testing the NsMapper"""

    def __init__(self):
        """TODO: to be defined1. """
        

    def __genMultiDomain(self):
        """Generates a multi domain view based on the graph showed for
        Dijkstra in wikipedia

        :returns: MultiDomain instance with a single domain view

        """
        graph = nx.Graph()
        graph.add_node(1)
        graph.add_node(2)
        graph.add_node(3)
        graph.add_node(4, res={'memory': 2, 'disk': 50, 'cpu': 4},\
			 fatType='server')
        graph.add_node(5, res={'memory': 2, 'disk': 50, 'cpu': 4},\
			 fatType='server')
        graph.add_node(6)
        graph.add_edge(1, 2, res={'bw': 300, 'delay': 7})
        graph.add_edge(1, 3, res={'bw': 300, 'delay': 9})
        graph.add_edge(1, 6, res={'bw': 100, 'delay': 14})
        graph.add_edge(2, 3, res={'bw': 100, 'delay': 10})
        graph.add_edge(2, 4, res={'bw': 200, 'delay': 15})
        graph.add_edge(3, 6, res={'bw': 300, 'delay': 2})
        graph.add_edge(3, 4, res={'bw': 200, 'delay': 11})
        graph.add_edge(4, 5, res={'bw': 250, 'delay': 6})
        graph.add_edge(5, 6, res={'bw': 250, 'delay': 9})

        multiDomain = MD.MultiDomain()
        multiDomain._MultiDomain__domains = 1
        multiDomain._MultiDomain__globalView = graph
        multiDomain._MultiDomain__domainsViews = [graph.copy()]

        return multiDomain
   

    def testConstrainedDijkstra(self):
        """Tests the constrained Dijkstra method
        :returns: Nothing

        """
        md = self.__genMultiDomain()
        mapper = NSM.NsMapper(md)
        err = False

        print '#########################'
        print '## constrainedDijkstra ##'
        print '#########################'

        path, delay = mapper.constrainedDijkstra(0, 1, [4, 5], delay=50,
                bw=190)
        if path != [(1, 3), (3, 4)] or delay != 20:
            print '  first search failed, got:' + str(path) + ' instead of:\
[(1, 3), (3, 4)]'
            err = True

        path, delay = mapper.constrainedDijkstra(0, 1, [4, 5], delay=50,
                bw=240)
        if path != [(1, 3), (3, 6), (6, 5)] or delay != 20:
            print '  second search failed, got:' + str(path) + ' instead of:\
[(1, 3), (3, 6), (6, 5)]'
            err = True

        # Unfeasible delays and bandwidths
        path, _ = mapper.constrainedDijkstra(0, 1, [4, 5], delay=50, bw=1000)
        if path is not None:
            print '  it should not have found any possible path'
            err = True

        path, _ = mapper.constrainedDijkstra(0, 1, [4, 5], delay=19, bw=0)
        if path is not None:
            print '  it should not have found any possible path'
            err = True

        if not err:
            print '  constrained Dijkstra works!'


    def testGreedy(self):
        """Tests the greedy mapping algorithm
        :returns: Nothing

        """
        md = self.__genMultiDomain()
        mapper = NSM.NsMapper(md)
        err = False

        print '############'
        print '## greedy ##'
        print '############'


        # Stress test server consumption
        ns = NS.NS()
        chain = nx.Graph()
        chain.add_node('start')
        chain.add_node(1, memory=0, disk=10, cpu=1)
        chain.add_node(2, memory=0, disk=10, cpu=1)
        chain.add_edge('start', 1, bw=0, delay=90)
        chain.add_edge(1, 2, bw=0, delay=90)
        ns.setChain(chain)

        path, mappings, delay = mapper.greedy(0, 1, ns)
        if path == [(1, 3), (3, 4), (4, 4)] and mappings[1] == 4 and\
                mappings[2] == 4 and delay == 20:
            print '  first server-stress mapping: OK'
        else:
            print '  first server-stress mapping was: ' + str(path) +\
                ', instead of: [(1, 3), (3, 4), (4, 4)]'

        ns = NS.NS() # node 4 can only host one of the VNFs
        chain = nx.Graph()
        chain.add_node('start')
        chain.add_node(1, memory=0, disk=10, cpu=2)
        chain.add_node(2, memory=0, disk=10, cpu=2)
        chain.add_edge('start', 1, bw=0, delay=90)
        chain.add_edge(1, 2, bw=0, delay=90)
        ns.setChain(chain)
        path, mappings, delay = mapper.greedy(0, 1, ns)
        if path == [(1, 3), (3, 4), (4, 5)] and mappings[1] == 4 and\
                mappings[2] == 5 and delay == 26:
            print '  second server-stress mapping: OK\n'
        else:
            print '  second server-stress mapping was: ' + str(path) +\
                ', instead of: [(1, 3), (3, 4), (4, 5)]'
        
        mapper.freeMappings()

        # Link stress testing
        ns = NS.NS()
        chain = nx.Graph()
        chain.add_node('start')
        chain.add_node(1, memory=0, disk=0, cpu=0)
        chain.add_edge('start', 1, bw=200, delay=90)
        ns.setChain(chain)

        path, mappings, delay = mapper.greedy(0, 1, ns)
        if path == [(1, 3), (3, 4)] and mappings[1] == 4 and delay == 20:
            print '  first link-stress mapping: OK'
        else:
            print '  first link-stress mapping was: ' + str(path) +\
                ', instead of: [(1, 3), (3, 4)]'


        ns = NS.NS()
        chain = nx.Graph()
        chain.add_node('start')
        chain.add_node(1, memory=0, disk=0, cpu=4)
        chain.add_node(2, memory=0, disk=0, cpu=1)
        chain.add_edge('start', 1, bw=0, delay=90)
        chain.add_edge(1, 2, bw=250, delay=90)
        ns.setChain(chain)
    
        path, mappings, delay = mapper.greedy(0, 1, ns)
        if path == [(1, 3), (3, 4), (4, 5)] and mappings[1] == 4 and\
                mappings[2] == 5 and delay == 26:
            print '  second link-stress mapping: OK'
        else:
            print '  second link-stress mapping was: ' + str(path) +\
                ', instead of: [(1, 3), (3, 4), (4, 5)]'


        ns = NS.NS()
        chain = nx.Graph()
        chain.add_node('start')
        chain.add_node(1, memory=0, disk=10, cpu=0)
        chain.add_node(2, memory=0, disk=10, cpu=0)
        chain.add_edge('start', 1, bw=50, delay=90)
        chain.add_edge(1, 2, bw=30000, delay=0)
        ns.setChain(chain)
    
        path, mappings, delay = mapper.greedy(0, 1, ns)
        if path == [(1, 3), (3, 6), (6, 5), (5, 5)] and mappings[1] == 5 and\
                mappings[2] == 5 and delay == 20:
            print '  third link-stress mapping: OK'
        else:
            print '  third link-stress mapping was: ' + str(path) +\
                ', instead of: [(1, 3), (3, 6), (6, 5), (5, 5)]'


        ns = NS.NS()
        chain = nx.Graph()
        chain.add_node('start')
        chain.add_node(1, memory=0, disk=0, cpu=0)
        chain.add_edge('start', 1, bw=200, delay=19)
        ns.setChain(chain)

        path, _, _ = mapper.greedy(0, 1, ns)
        if path != []:
            print '  fourth link-stress mapping was: ' + str(path) +\
                ', []'
        else:
            print '  fourth link-stress mapping: OK'

        mapper.freeMappings()


    def testRandomWalk(self):
        """Tests the random walk to find paths for VNF allocation
        :returns: Nothing

        """
        md = self.__genMultiDomain()
        mapper = NSM.NsMapper(md)
        err = False

        print '#################'
        print '## Random walk ##'
        print '#################'

        ns = NS.NS()
        chain = nx.Graph()
        chain.add_node('start')
        chain.add_node(1, memory=0, disk=10, cpu=0)
        chain.add_edge('start', 1, bw=250, delay=90)
        ns.setChain(chain)

        path, delay = mapper.randomWalk(0, 1, {4: None, 5: None}, 90, 250)
        if path == None or (path == [(1, 3), (3, 6), (6, 5)] and delay == 20):
            print '  first mapping worked!'
        else:
            print '  first mapping did not work as expected'

        path, delay = mapper.randomWalk(0, 1, {4: None, 5: None}, 90, 200)
        if path == None or\
                (path == [(1, 3), (3, 6), (6, 5)] and delay == 20) or\
                (path == [(1, 2), (2, 4)] and delay == 22) or\
                (path == [(1, 3), (3, 4)] and delay == 20):
            print '  second mapping worked!'
        else:
            print '  second mapping did not work as expected'


    def testSmartRandomWalk(self):
        """Tests the backtracking random walk to find paths for VNF allocation
        :returns: Nothing

        """
        md = self.__genMultiDomain()
        mapper = NSM.NsMapper(md)
        err = False

        print '#######################'
        print '## Smart random walk ##'
        print '#######################'

        ns = NS.NS()
        chain = nx.Graph()
        chain.add_node('start')
        chain.add_node(1, memory=0, disk=10, cpu=0)
        chain.add_edge('start', 1, bw=250, delay=90)
        ns.setChain(chain)

        path, delay = mapper.smartRandomWalk(0, 1, {4: None, 5: None}, 20,
                250)
        if path == [(1, 3), (3, 6), (6, 5)] and delay == 20:
            print '  first mapping worked!'
        else:
            print '  first mapping did not work as expected'
        print '  given path=' + str(path) + ' delay=' + str(delay)

        path, delay = mapper.smartRandomWalk(0, 1, {4: None, 5: None}, 90,
                200)
        if (path == [(1, 3), (3, 6), (6, 5)] and delay == 11) or\
                (path == [(1, 2), (2, 4)] and delay == 22) or\
                (path == [(1, 3), (3, 4)] and delay == 20):
            print '  second mapping worked!'
        else:
            print '  second mapping did not work as expected'
        print '  given path=' + str(path) + ' delay=' + str(delay)

        path, delay = mapper.smartRandomWalk(0, 1, {4: None, 5: None}, 90,
                1000)
        if path == None:
            print '  third mapping worked!'
        else:
            print '  third mapping did not work as expected'
        print '  given path=' + str(path)


    def testBFS(self):
        """Tests the BFS algorithm to find paths between certain nodes-
        :returns: Nothing

        """
        md = self.__genMultiDomain()
        mapper = NSM.NsMapper(md)
        err = False

        print '#########'
        print '## BFS ##'
        print '#########'

        ns = NS.NS()
        chain = nx.Graph()
        chain.add_node('start')
        chain.add_node(1, memory=0, disk=10, cpu=0)
        chain.add_edge('start', 1, bw=250, delay=90)
        ns.setChain(chain)

        path, delay = mapper.BFS(0, 1, {4: None, 5: None}, 20, 250)
        if path == [(1, 3), (3, 6), (6, 5)] and delay == 20:
            print '  first mapping worked!'
        else:
            print '  first mapping did not work as expected'

        path, _= mapper.BFS(0, 1, {4: None, 5: None}, 20, 250, depth=2)
        if path == None:
            print '  second mapping worked!'
        else:
            print '  second mapping did not work as expected'

        path, delay = mapper.BFS(0, 1, {4: None, 5: None}, 90, 200)
        if path == [(1, 2), (2, 4)] and delay == 22:
            print '  third mapping worked!'
        else:
            print '  third mapping did not work as expected'

        path, _ = mapper.BFS(0, 1, {4: None, 5: None}, 90, 200, depth=1)
        if path == None:
            print '  fourth mapping worked!'
        else:
            print '  fourth mapping did not work as expected'


    def greedyNsBunch(self, numNs):
        """Launches a bunch of NS requests to be mapped on top of an existing
        multiDomain. In case it is not already created, a multiDomain will be
        generated. Is just to check if some errors appear.

        :numNs: number of NSs to be within the bunch
        :returns: Nothing

        """
        # Create the NS requests bunch
        bwTh = {'min': 100, 'max': 200}
        delayTh = {'min': 5, 'max': 15}
        memoryTh = {'min': 1, 'max': 3}
        diskTh = {'min': 20, 'max': 100}
        cpuTh = {'min': 1, 'max': 4}
        nsGen = NSG.NSgenerator(bwTh, delayTh, memoryTh, diskTh, cpuTh)
        NSs = []
        for _ in range(numNs):
            ns = nsGen.yieldChain(2, 3, 3, 6)
            NSs.append(ns)

        # Generate/read the multiDomain
        md = None
        if not os.path.exists('graphs/greedyNsBunch') or\
                not os.path.isdir('graphs/greedyNsBunch'):
            print 'a escribir'
            md = MD.MultiDomain.yieldRandMultiDomain()
            md.write('greedyNsBunch')
        else:
            md = MD.MultiDomain.read('greedyNsBunch')

        # Execute the mappings
        failed = 0
        mapper = NSM.NsMapper(md)
        domains = len(md.getDomainsViews())
        print 'Multidomain has ' + str(domains) + ' domains'
        for ns in NSs:
            domain = random.randint(0, domains - 1)
            servers = md.getServers(domain).keys()
            entryS = random.randint(0, len(servers) - 1)
            print 'entryServer=' + str(servers[entryS]) + ', possibleEntryServers=' +\
                str(len(servers)) + ', domain=' + str(domain)
            print ns
            path, _, _ = mapper.greedy(domain, servers[entryS], ns,
                    method='Dijkstra')
            print str(path) + '\n========================\n'
            failed += 1 if path == [] else 0

        mapper.freeMappings()
    
        print '  successful requests: ' + str(numNs - failed)
        print '  failed requests: ' + str(failed)



if __name__ == '__main__':
    tester = NsMapperTester()
    # tester.testConstrainedDijkstra()
    tester.testGreedy()
    # tester.testRandomWalk()
    # tester.testSmartRandomWalk()
    # tester.testBFS()
    # tester.greedyNsBunch(100)



