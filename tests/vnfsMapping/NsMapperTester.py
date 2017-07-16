import sys
import os
import networkx as nx

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../../src')))
from vnfsMapping import MultiDomain as MD
from vnfsMapping import NS
from vnfsMapping import NsMapper as NSM


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
        graph.add_node(1, memory=2, disk=50, cpu=4)
        graph.add_node(2, memory=2, disk=50, cpu=4)
        graph.add_node(3, memory=2, disk=50, cpu=4)
        graph.add_node(4, memory=2, disk=50, cpu=4)
        graph.add_node(5, memory=2, disk=50, cpu=4)
        graph.add_node(6, memory=2, disk=50, cpu=4)
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
        multiDomain._MultiDomain__domainsViews = [graph]

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

        path = mapper.constrainedDijkstra(0, 1, [4, 5], delay=50, bw=190)
        if path != [(1, 3), (3, 4)]:
            print '  first search failed, got:' + str(path) + ' instead of:\
[(1, 3), (3, 4)]'
            err = True

        path = mapper.constrainedDijkstra(0, 1, [4, 5], delay=50, bw=240)
        if path != [(1, 3), (3, 6), (6, 5)]:
            print '  second search failed, got:' + str(path) + ' instead of:\
[(1, 3), (3, 6), (6, 5)]'
            err = True

        # Unfeasible delays and bandwidths
        path = mapper.constrainedDijkstra(0, 1, [4, 5], delay=50, bw=1000)
        if path is not None:
            print '  it should not have found any possible path'
            err = True

        path = mapper.constrainedDijkstra(0, 1, [4, 5], delay=19, bw=0)
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




if __name__ == '__main__':
    tester = NsMapperTester()
    tester.testConstrainedDijkstra()



