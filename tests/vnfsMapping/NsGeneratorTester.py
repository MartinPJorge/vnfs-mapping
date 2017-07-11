import sys
import os
import math

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../../src')))
from vnfsMapping import NsGenerator as NsG


class NsGeneratorTester(object):

    """Test class for the NsGenerator"""

    def __init__(self):
        """TODO: to be defined1. """


    def __getNsInfo(self):
        """Retrieves the NS chain information
        :returns: (vnfs, branches, splits)

        """
        pass

    
    def testYield(self):
        """Tests the yield method that generates NS chains
        :returns: Nothing

        """
        
        nsGen = NsG.NSgenerator(100, 100, 100, 100, 4)
        
        # Test with different chain sizes
        for vnfs in range(10, 31):
            for branches in range(1, math.floor((vnfs + 1) / 2)):
                for splits in range(1, 2 * branches):
                    ns = nsGen.yieldChain(splits, branches, vnfs)


