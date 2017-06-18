import sys
import os
import random
import itertools
import networkx as nx
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../../src')))
from vnfsMapping import DomainsGenerator as DG



class DomainsGeneratorTester(object):

    """Test the domain generation class"""

    def __init__(self):
        properties = self.__genProperties()

        self.__domains = properties['domains']
        self.__meshDegree = properties['meshDegree']
        self.__fatTreeDegrees = properties['fatTreeDegrees']
        self.__foreignPods = properties['foreignPods']
        self.__meshLnkRes = properties['meshLnkRes']
        self.__fatLnkRes = properties['fatLnkRes']
        self.__servRes = properties['servRes']


    def __genProperties(self):
        """Generates set of properties neccessary for the graphs generation
        :returns: dictionary with the set of properties

        """
        # Specify graph characteristics
        domains = random.randint(2, 8)
        meshDegree = random.random()
        degrees = [4, 6, 8]
        fatTreeDegrees = []
        for _ in range(domains):
            fatTreeDegrees.append(degrees[random.randint(0, len(degrees)-1)])
        
        # Create shared infrastructure
        foreingPods = []
        for domain in range(domains):
            sharedDomainPods = dict()

            for foreignDom in [dom for dom in range(domains)\
                    if dom != domain]:
                foreignDegree = fatTreeDegrees[foreignDom]
                numSharedPods = random.randint(1, foreignDegree)
                sharedPods = range(1, foreignDegree + 1)

                for _ in range(foreignDegree - numSharedPods):
                    del sharedPods[random.randint(0, len(sharedPods)-1)]
                sharedDomainPods[str(foreignDom)] = sharedPods

            foreingPods.append(sharedDomainPods)

        # Links and server resources
        meshLnkRes = {
            'bw': {
                'min': 1,
                'max': 3
            },
            'delay': {
                'min': 1,
                'max': 3
            }
        }
        fatLnkRes = meshLnkRes
        servRes = {
            'memory': {
                'min': 1,
                'max': 3
            },
            'cpu': {
                'min': 1,
                'max': 3
            },
            'disk': {
                'min': 1,
                'max': 3
            }
        }

        return {
            'domains': domains,
            'meshDegree': meshDegree,
            'fatTreeDegrees': fatTreeDegrees,
            'foreignPods': foreingPods,
            'meshLnkRes': meshLnkRes,
            'fatLnkRes': fatLnkRes,
            'servRes': servRes
        }
        

    
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

        print '#####################'
        print '### fat-tree test ###'
        print '#####################'


        generator = DG.DomainsGenerator(domains=1, meshDegree=0,
                fatTreeDegrees=[1], meshLnkRes=self.__meshLnkRes,
                fatLnkRes=self.__fatLnkRes, servRes=self.__servRes)

        for k in [4, 6, 8]:
            # Test k-ary tree generation
            print 'Checking ' + str(k) + '-ary fat-tree generation'
            generator.setFatTreeDegrees([k])
            globalView = generator.createGlobalView()

            coreNodes = self.getAttrNodes(globalView, 'fatType', 'core')
            aggNodes = self.getAttrNodes(globalView, 'fatType', 'aggregate')
            edgeNodes = self.getAttrNodes(globalView, 'fatType', 'edge')

            # Check nodes degree
            gwDegOk = globalView.degree(0) == k/2*k/2
            coreDegOk = reduce(lambda ok, node: ok and\
                    globalView.degree(node) == k+1, coreNodes)
            aggNodesOk = reduce(lambda ok, node: ok and\
                    globalView.degree(node) == k, aggNodes)
            edgeNodesOk = reduce(lambda ok, node: ok and\
                    globalView.degree(node) == k, edgeNodes)

            print '  gwDegOk: ' + str(gwDegOk)
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
            len6Paths = len(list(itertools.combinations(range(k*k/2*k/2),
                2))) - len4Paths - len2Paths

            print '  len2Paths: ' + str(len2Paths)
            print '  len4Paths: ' + str(len4Paths)
            print '  len6Paths: ' + str(len6Paths)

            print '  ' + str(pathLengths)
            print '  path lengths ok?: ' + str(len2Paths == pathLengths[2]\
                    and len4Paths == pathLengths[4] and\
                    len6Paths == pathLengths[6])

    
    def domainsViewTester(self):
        """Test if each domain view of the global graph is correct
        :returns: TODO

        """

        print '\n########################'
        print '### domainsView test ###'
        print '########################'

        # Create the global and per domain graph views
        generator = DG.DomainsGenerator(domains=self.__domains,
                meshDegree=self.__meshDegree,
                fatTreeDegrees=self.__fatTreeDegrees,
                meshLnkRes=self.__meshLnkRes, fatLnkRes=self.__fatLnkRes,
                servRes=self.__servRes)
        globalView = generator.createGlobalView()
        print '       \ttheory\treal'
        for domain in range(self.__domains):
            domainView = generator.createDomainView(globalView, domain,
                    self.__foreignPods[domain])
            # Check if it has the correct number of nodes
            k = self.__fatTreeDegrees[domain]
            fatTreeNodes = k/2*k/2 + k*k + k*k*k/4
            sharedNodes = 0
            
            for shareDomain in self.__foreingPods[domain]:
                shareK = fatTreeDegrees[int(shareDomain)]
                pods = foreingPods[domain][shareDomain]
                sharedNodes += len(pods)* (shareK + shareK*shareK/4) # pod
                sharedNodes += shareK*shareK/4 # core switches

            theoryNodes = fatTreeNodes + domains + sharedNodes

            print 'Domain' + str(domain) + '\t' + str(theoryNodes) + '\t' +\
                    str(len(domainView.nodes())) + ('\tok' if theoryNodes ==
                            len(domainView.nodes()) else '\terr')


if __name__ == '__main__':
    tester = DomainsGeneratorTester()
#    tester.testFatTree()
    tester.domainsViewTester()

