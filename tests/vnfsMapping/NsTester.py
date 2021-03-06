import sys
import os
import math
import networkx as nx

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../../src')))
from vnfsMapping import NS


class NsTester(object):

    """Test class for the NS"""

    def __init__(self):
        """TODO: to be defined1. """


    def __createMockChain(self):
        """Creates the mock chain that is used as a NS
        :returns: networkx instance of the chain

        """
        # Create the mock chain
        mockChain = nx.Graph()
        mockChain.add_node('start', memory=2, disk=3, cpu=4)
        mockChain.add_edge('start', 1, bw=2, delay=3)
        mockChain.add_node(1, memory=2, disk=3, cpu=4)
        mockChain.add_node(2, memory=2, disk=3, cpu=4)
        mockChain.add_node(4, memory=2, disk=3, cpu=4)
        mockChain.add_edge(1, 2, bw=2, delay=3)
        mockChain.add_edge(1, 4, bw=2, delay=3)

        mockChain.add_node(3, memory=2, disk=3, cpu=4)
        mockChain.add_edge(2, 3, bw=2, delay=3)
        mockChain.add_node(5, memory=2, disk=3, cpu=4)
        mockChain.add_node(6, memory=2, disk=3, cpu=4)
        mockChain.add_edge(3, 5, bw=2, delay=3)
        mockChain.add_edge(3, 6, bw=2, delay=3)

        return mockChain


    def testReadWrite(self):
        """Tests the reading and writing methods
        :returns: Nothing

        """

        print '###################'
        print '## testReadWrite ##'
        print '###################'
        
        mockChain = self.__createMockChain()
        ns = NS.NS()
        ns.setChain(mockChain)
        ns.setSplitsNum(2)
        ns.setBranchNum(3)
        ns.setMaxSplitW(2)

        
        ns.write('test')
        nsRead = NS.NS.read('test')

        if nsRead.compare(ns):
            print '  read and write is performed correctly!'
        else:
            print '  read and written NSs are not the same'
        

    def testIteration(self):
        """Tests the iteration methods over a fixed mock NS chain that could
            have been generated by the NsGenerator
        :returns: Nothing
        """
        
        mockChain = self.__createMockChain()

        ns = NS.NS()
        ns.setChain(mockChain)
        ns.initIter()

        # Check nodes retrieval
        print '######################'
        print '## Iteration tester ##'
        print '######################'
        correct = True
        nextVnfs = ns.iterNext()

        if [1] != nextVnfs:
            print '  retrieval 1 is not == [1]'
            correct = False

        nextVnfs = ns.iterNext()
        if 2 not in nextVnfs or 4 not in nextVnfs or len(nextVnfs) != 2:
            print '  retrieval 1 is not == [2, 4]'
            correct = False

        nextVnfs = ns.iterNext()
        if [3] != nextVnfs:
            print '  retrieval 3 is not == [3]'
            correct = False

        nextVnfs = ns.iterNext()
        if 5 not in nextVnfs or 6 not in nextVnfs or len(nextVnfs) != 2:
            print '  retrieval 4 is not == [5, 6]'
            correct = False

        nextVnfs = ns.iterNext()
        if [] != nextVnfs:
            print '  retrieval 8 is not == []'
            correct = False
        
        if correct:
            print '  iteration over the NS works properly!'


    def testPrevVNFs(self):
        """Tests the previous VNFs retrieval method
        :returns: Nothing

        """
        print '##############'
        print '## prevVNFs ##'
        print '##############'

        mockChain = self.__createMockChain()
        ns = NS.NS()
        ns.setChain(mockChain)
        ns.setSplitsNum(2)
        ns.setBranchNum(3)
        ns.setMaxSplitW(2)

        prevs = ns.prevVNFs('start')
        if prevs == []:
            print '  first retrieval: OK!'
        else:
            print '  first retrieval: ERR!'

        prevs = ns.prevVNFs(1)
        if prevs == ['start']:
            print '  second retrieval: OK!'
        else:
            print '  second retrieval: ERR!'

        prevs = ns.prevVNFs(2)
        if prevs == [1]:
            print '  third retrieval: OK'
        else:
            print '  third retrieval: ERR'

        if ns._NS__prevNeighsCache[1] == ['start'] and\
                ns._NS__prevNeighsCache[2] == [1]:
            print '  cache storage works: OK!'
        else:
            print '  cache storage works: ERR!'


    def testNextVNFs(self):
        """Tests the next VNFs retrieval method
        :returns: Nothing

        """
        print '##############'
        print '## nextVNFs ##'
        print '##############'

        mockChain = self.__createMockChain()
        ns = NS.NS()
        ns.setChain(mockChain)
        ns.setSplitsNum(2)
        ns.setBranchNum(3)
        ns.setMaxSplitW(2)

        nexts = ns.getNextVNFs('start')
        if nexts == [1]:
            print '  first retrieval: OK!'
        else:
            print '  first retrieval: ERR!'

        nexts = ns.getNextVNFs(1)
        if 2 in nexts and 4 in nexts:
            print '  second retrieval: OK!'
        else:
            print '  second retrieval: ERR!'

        nexts = ns.getNextVNFs(5)
        if nexts == []:
            print '  third retrieval: OK!'
        else:
            print '  third retrieval: ERR!'

        if 2 in ns._NS__nextNeighsCache[1] and\
                4 in ns._NS__nextNeighsCache[1] and\
                [1] == ns._NS__nextNeighsCache['start'] and\
                [] == ns._NS__nextNeighsCache[5]:
            print '  cache storage: OK!'
        else:
            print '  cache storage: ERR!'


if __name__ == '__main__':
    tester = NsTester()
    tester.testIteration()
    tester.testReadWrite()
    tester.testPrevVNFs()
    tester.testNextVNFs()

