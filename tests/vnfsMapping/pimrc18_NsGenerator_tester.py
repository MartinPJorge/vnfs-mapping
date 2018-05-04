import sys
sys.path.append('../../src/vnfsMapping/')
from NsGenerator import *


if __name__ == '__main__':
    vnfTh = {
        'processing_time': {'min': 2, 'max': 10},
        'requirements': {
            'cpu': {'min': 2, 'max': 10},
            'memory': {'min': 2, 'max': 10},
            'storage': {'min': 2, 'max': 10}
        }
    }

    linkTh = {
        'traffic': {'min': 12, 'max': 30}
    }

    ns_gen = NSgenerator(linkTh, vnfTh)
    ns = ns_gen.yieldChain(splits=2, splitWidth=3, branches=5, vnfs=8)

    print ns

