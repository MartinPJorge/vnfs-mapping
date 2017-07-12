import sys
import time
import os
import math

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../../src')))
from vnfsMapping import NsGenerator as NsG


class NsGeneratorTester(object):

    """Test class for the NsGenerator"""

    def __init__(self):
        """TODO: to be defined1. """


    def __getNsInfo(self, ns):
        """Retrieves the NS chain information

        :ns: NS instance
        :returns: (vnfs, branches, splits)

        """
        vnfs = ns.getVNFsNumber()
        branches = ns.getBranchNum()
        splits = ns.getSplitsNum()

        return (vnfs, branches, splits)


    
    def testYield(self):
        """Tests the yield method that generates NS chains
        :returns: Nothing

        """
        
        bwTh = {'min': 100, 'max': 200}
        delayTh = {'min': 100, 'max': 200}
        memoryTh = {'min': 500, 'max': 1000}
        diskTh = {'min': 100, 'max': 200}
        cpuTh = {'min': 100, 'max': 200}
        nsGen = NsG.NSgenerator(bwTh, delayTh, memoryTh, diskTh, cpuTh)
        
        print '###############'
        print '## testYield ##'
        print '###############'

        failFlag = False

        # Test with different chain sizes
        for vnfs in range(10, 31):
            # time.sleep(.5)
            for branches in range(1, int((vnfs + 1) / 2)):
                for splits in range(1, 2 * branches):

                    ns = nsGen.yieldChain(splits, branches, vnfs)
                    genVnfs, genBranches, genSplits = self.__getNsInfo(ns)

                    if genVnfs > vnfs or genBranches > branches\
                            or genSplits > splits:
                        failFlag = True
                        print '  ' + str(genVnfs) + ' > ' + str(vnfs) + ': ' +\
                            str(genVnfs > vnfs)
                        print '  ' + str(genBranches) + ' > ' + str(branches) + ': ' +\
                            str(genBranches > branches)
                        print '  ' + str(genSplits) + ' > ' + str(splits) + ': ' +\
                            str(genSplits > splits)

        if not failFlag:
            print '  no failure on chain generation!'



if __name__ == '__main__':
    tester = NsGeneratorTester()
    tester.testYield()


