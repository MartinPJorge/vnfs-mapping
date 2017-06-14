import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../../src')))
from vnfsMapping import DomainsGenerator as DG

class DomainsGeneratorTester(object):

    """Test the domain generation class"""

    def __init__(self):
        pass


if __name__ == '__main__':
   generator = DG.DomainsGenerator(domains=1, meshDegree=0)

