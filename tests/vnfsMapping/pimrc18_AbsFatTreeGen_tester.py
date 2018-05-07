import sys
sys.path.append('../../src/vnfsMapping/')
from AbsFatTreeGen import *


if __name__ == '__main__':
    linksProps = {
        'delay': 1,
        'capacity': 4
    }
    serverProps = {
        'capabilities': {
            'cpu': 1,
            'storage': 1,
            'memory': 1
        }
    }

    fat_tree_gen = AbsFatTreeGen()
    NET_fat_tree = fat_tree_gen.yieldFatTree(4, linksProps, serverProps,
        abstraction='NET')
    nx.write_gml(NET_fat_tree, "out/test_NET_fat_tree_k4.gml")

    print '==== Testing PIMRC18 conversion ===='
    print AbsFatTreeGen.NETtoPimrc(NET_fat_tree, linksProps, serverProps)

