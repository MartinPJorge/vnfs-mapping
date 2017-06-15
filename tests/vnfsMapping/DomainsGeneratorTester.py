import sys
import os
import itertools
import networkx as nx
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../../src')))
from vnfsMapping import DomainsGenerator as DG



class DomainsGeneratorTester(object):

    """Test the domain generation class"""

    def __init__(self):
        pass

    
    def getAttrNodes(self, graph, attr, value):
        """Gets graph nodes with a certain attribute value

        :graph: networkX grpah
        :attr: attribute string
        :value: attribute value
        :returns: list of nodes with attr=value

        """
        nodes = nx.get_node_attributes(graph, attr)
        return filter(lambda node: nodes[node] == value, nodes.keys())


    def testFatTree(self):
        """Tests the fat-tree generation
        :returns: True | False if test succeeds or not

        """

        generator = DG.DomainsGenerator(domains=1, meshDegree=0,
                fatTreeDegrees=[1])

        for k in [4, 6, 8]:
            # Test k-ary tree generation
            print 'Checking ' + str(k) + '-ary fat-tree generation'
            generator.setFatTreeDegrees([k])
            globalView = generator.createGlobalView()

            coreNodes = self.getAttrNodes(globalView, 'fatType', 'core')
            aggNodes = self.getAttrNodes(globalView, 'fatType', 'aggregate')
            edgeNodes = self.getAttrNodes(globalView, 'fatType', 'edge')

            # Check nodes degree
            coreDegOk = reduce(lambda ok, node: ok and\
                    globalView.degree(node) == k+1, coreNodes)
            aggNodesOk = reduce(lambda ok, node: ok and\
                    globalView.degree(node) == k, aggNodes)
            edgeNodesOk = reduce(lambda ok, node: ok and\
                    globalView.degree(node) == k, edgeNodes)

            print '  coreDegOk: ' + str(coreDegOk)
            print '  aggNodesOk: ' + str(aggNodesOk)
            print '  edgeNodesOk: ' + str(edgeNodesOk)

            # Check shortest paths
            servers = self.getAttrNodes(globalView, 'fatType', 'server')
            pathLengths = dict()
            for (server1, server2) in itertools.combinations(servers, 2):
                length = nx.dijkstra_path_length(globalView, server1, server2)
                pathLengths[length] = 1 if length not in pathLengths.keys()\
                        else pathLengths[length] + 1

            len2Paths = k*k/2*len(list(itertools.combinations(range(k/2), 2)))
            len4Paths = k*( len(list(itertools.combinations(range(k/2*k/2),
                2))) - k/2*len(list(itertools.combinations(range(k/2), 2))) )
            len6Paths = len(list(itertools.combinations(range(k*k/2*k/2), 2)))\
                - len4Paths - len2Paths

            print '  len2Paths: ' + str(len2Paths)
            print '  len4Paths: ' + str(len4Paths)
            print '  len6Paths: ' + str(len6Paths)

            print '  ' + str(pathLengths)
            print '  path lengths ok?: ' + str(len2Paths == pathLengths[2] and\
                    len4Paths == pathLengths[4] and\
                    len6Paths == pathLengths[6])



if __name__ == '__main__':
    tester = DomainsGeneratorTester()
    tester.testFatTree()

