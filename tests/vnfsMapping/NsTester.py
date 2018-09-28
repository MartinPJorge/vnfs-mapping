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
        mockChain = nx.MultiGraph()

        # VNFs
        mockChain.add_node("MECa", memory=2, disk=3, cpu=4, vnf_name='',
                id = "MECa", processing_time = 1)
        mockChain.add_node("MECb", memory=2, disk=3, cpu=4, vnf_name='',
                id = "MECb", processing_time = 1)
        mockChain.add_node("WebServer", memory=2, disk=3, cpu=4, vnf_name='',
                id = "WebServer", processing_time = 1)
        mockChain.add_node("DB", memory=2, disk=3, cpu=4, vnf_name='',
                id = "DB", processing_time = 1)
        mockChain.add_node("Renderer", memory=2, disk=3, cpu=4, vnf_name='',
                id = "Rendered", processing_time = 1)

        # VLs
        mockChain.add_edge('MECa', "WebServer", bw=2, delay=3)
        mockChain.add_edge('MECb', "WebServer", bw=2, delay=3)
        mockChain.add_edge('WebServer', "DB", bw=2, delay=3)
        mockChain.add_edge('WebServer', "Renderer", bw=2, delay=3)
        # redundancy
        mockChain.add_edge('WebServer', "Renderer", bw=20, delay=3) 

        return mockChain


    def __mockNfpds(self):
        """Creates the Nfpds used for the mock Chain to be generated
        :returns: the nfpd dictionary for the setNfpds() method

        """
        return {
            "aWay": ["MECa", "WebServer", "DB", "WebServer", "DB",
                "WebServer", "Renderer"],
            "bWay": ["MECb", "WebServer", "DB", "WebServer", "DB",
                "WebServer", "Renderer"]
        }


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
        ns.setNfpds(self.__mockNfpds())
        ns.initIter()

        # Check nodes retrieval
        print '######################'
        print '## Iteration tester ##'
        print '######################'
        correct = True

        # aWay iteration #
        nextVnf = ns.iterNext("aWay")
        print "# starting with Nfpd=aWay"
        if "MECa" != nextVnf:
            print '  aWay retrieval 1 is not == MECa'
            correct = False
        
        if "WebServer" != ns.iterNext("aWay"):
            print '  aWay retrieval 2 is not == WebServer'
            correct = False
        
        if "DB" != ns.iterNext("aWay"):
            print '  aWay retrieval 3 is not == DB'
            correct = False
        
        if "WebServer" != ns.iterNext("aWay"):
            print '  aWay retrieval 4 is not == WebServer'
            correct = False
        
        if "DB" != ns.iterNext("aWay"):
            print '  aWay retrieval 5 is not == DB'
            correct = False
        
        if "WebServer" != ns.iterNext("aWay"):
            print '  aWay retrieval 6 is not == WebServer'
            correct = False
        
        if "Renderer" != ns.iterNext("aWay"):
            print '  aWay retrieval 7 is not == Rendered'
            correct = False

        if None != ns.iterNext("aWay"):
            print '  aWay retrieval 8 is not == None'
            correct = False


        # aWay iteration #
        nextVnf = ns.iterNext("bWay")
        print "# starting with Nfpd=bWay"
        if "MECb" != nextVnf:
            print '  bWay retrieval 1 is not == MECa'
            correct = False
        
        if "WebServer" != ns.iterNext("bWay"):
            print '  bWay retrieval 2 is not == WebServer'
            correct = False
        
        if "DB" != ns.iterNext("bWay"):
            print '  bWay retrieval 3 is not == DB'
            correct = False
        
        if "WebServer" != ns.iterNext("bWay"):
            print '  bWay retrieval 4 is not == WebServer'
            correct = False
        
        if "DB" != ns.iterNext("bWay"):
            print '  bWay retrieval 5 is not == DB'
            correct = False
        
        if "WebServer" != ns.iterNext("bWay"):
            print '  bWay retrieval 6 is not == WebServer'
            correct = False
        
        if "Renderer" != ns.iterNext("bWay"):
            print '  bWay retrieval 7 is not == Rendered'
            correct = False

        if None != ns.iterNext("bWay"):
            print '  aWay retrieval 8 is not == None'
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
        ns.setNfpds(self.__mockNfpds())

        if None == ns.prevVNF('MECa', 'aWay'):
            print '  first aWay retrieval: OK!'
        else:
            print '  first aWay retrieval: ERR!'

        if "WebServer" == ns.prevVNF("DB", "aWay"):
            print '  second aWay retrieval: OK!'
        else:
            print '  second aWay retrieval: ERR!'

        if None == ns.prevVNF('MECa', 'bWay'):
            print '  first bWay retrieval: OK!'
        else:
            print '  first bWay retrieval: ERR!'

        if "WebServer" == ns.prevVNF("DB", "bWay"):
            print '  second bWay retrieval: OK!'
        else:
            print '  second bWay retrieval: ERR!'

        return



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
        ns.setNfpds(self.__mockNfpds())

        if None == ns.getNextVNF('Renderer', 'aWay'):
            print '  first aWay retrieval: OK!'
        else:
            print '  first aWay retrieval: ERR!'

        if 'WebServer' == ns.getNextVNF('MECa', 'aWay'):
            print '  second aWay retrieval: OK!'
        else:
            print '  second aWay retrieval: ERR!'

        if None == ns.getNextVNF('Renderer', 'bWay'):
            print '  first bWay retrieval: OK!'
        else:
            print '  first bWay retrieval: ERR!'

        if 'WebServer' == ns.getNextVNF('MECb', 'bWay'):
            print '  second bWay retrieval: OK!'
        else:
            print '  second bWay retrieval: ERR!'

        return


    def testGetters(self):
        """Tests the get methods for VNFs and VLs
        :returns: Nothing

        """
        print '#############'
        print '## getters ##'
        print '#############'

        mockChain = self.__createMockChain()
        ns = NS.NS()
        ns.setChain(mockChain)
        ns.setNfpds(self.__mockNfpds())

        wsVNF = ns.getVnf("WebServer")
        if wsVNF['cpu'] == 4 and wsVNF['disk'] == 3 and wsVNF['memory'] == 2:
            print "  WebServer VNF retrieved OK with its properties"
        else:
            print "  WebServer VNF properties are not retrieved properly"


        ws2RenderLinks = ns.getLinks("WebServer", "Renderer")
        if ws2RenderLinks[0]['bw'] == 2 and ws2RenderLinks[0]['delay'] == 3\
                and ws2RenderLinks[1]['bw'] == 20 and\
                ws2RenderLinks[1]['delay'] == 3:
            print "  multiple links between WebServer and Renderer: OK!"
        else:
            print "  the links between WebServer and Renderere BAD"

        return
        


if __name__ == '__main__':
    tester = NsTester()
    tester.testIteration()
    # tester.testReadWrite()
    tester.testPrevVNFs()
    tester.testNextVNFs()
    tester.testGetters()

