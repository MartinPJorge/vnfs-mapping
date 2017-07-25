import sys
import os
import random
import networkx as nx
import NsMapperTester as NSMT

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../../src')))
from vnfsMapping import MultiDomain as MD
from vnfsMapping import NS
from vnfsMapping import NsMapper as NSM
from vnfsMapping import NsGenerator as NSG
from vnfsMapping import ResourcesWatchDog as RW


class ResourcesWatchDogTester(object):

    """Class to test the ResourceWatchDog class methods"""

    def __init__(self):
        """TODO: to be defined1. """
        
    def __genMultiDomain(self):
        """Generates the MultiDomain that the NsMapperTester has implemented in
        its __genMultiDomain method
        :returns: MultiDomain instance

        """
        mapper = NSMT.NsMapperTester()
        return mapper._NsMapperTester__genMultiDomain()


    def testWatch(self):
        """Tests the watch method
        :returns: Nothing

        """
        print '###########'
        print '## watch ##'
        print '###########'

        ns = NS.NS()
        chain = nx.Graph()
        chain.add_node('start')
        chain.add_node(1, memory=1, disk=1, cpu=1)
        chain.add_node(2, memory=1, disk=1, cpu=1)
        chain.add_edge('start', 1, bw=50, delay=90)
        chain.add_edge(1, 2, bw=100, delay=90)
        ns.setChain(chain)
        
        md = self.__genMultiDomain()
        watchDog = RW.ResourcesWatchDog(md, ns, 0)


        # Map the first VNF
        watchDog.watch('start', 1, [(1, 3), (3, 4)])
        lnkRes13 = md.getLnkRes(0, 1, 3)
        lnkRes34 = md.getLnkRes(0, 3, 4)
        servRes = md.getServerRes(0, 4)
        
        if lnkRes13['bw'] != 250 or lnkRes34['bw'] != 150 or\
                servRes['memory'] != 1 or servRes['disk'] != 49 or\
                servRes['cpu'] != 3:
            print '  first watch: ERR'
        else:
            print '  first watch: OK'

        # Map the second VNF
        watchDog.watch(1, 2, [(5, 5)])
        servRes = md.getServerRes(0, 5)
        
        if servRes['memory'] != 1 or servRes['disk'] != 49 or\
                servRes['cpu'] != 3:
            print '  second watch: ERR'
        else:
            print '  second watch: OK'



if __name__ == '__main__':
    tester = ResourcesWatchDogTester()
    tester.testWatch()
        

