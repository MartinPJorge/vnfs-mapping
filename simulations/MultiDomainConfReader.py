import sys
import os
import random
import json
import networkx as nx

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../src')))
from vnfsMapping import MultiDomain as MD
from vnfsMapping import NS
from vnfsMapping import NsMapper as NSM
from vnfsMapping import NsMapping as NSm
from vnfsMapping import NsGenerator as NSG

# 
absPath = os.path.abspath(os.path.dirname(__file__))
configPath = '/'.join(absPath.split('/')[:-2]) + '/simulation-configs'



class MultiDomainConfReader(object):

    """Class to read MultiDomain configuration files"""

    def __init__(self, simName):
        """Initialize the reader instance

        :simName: name of the simulation

        """
        self.__simName = simName
        

    def read(self):
        """Reads the configuration file to generate a MultiDomain instance
        based on the config file of the simulation.
        :returns: MultiDomain instance, None in case of error

        """
        filePath = configPath + '/' + self.__simName + '/multiDomain.json'
        if os.path.exists(filePath):
            return None

        mdProperties = None
        with open(filePath) as f:
            mdProperties = json.load(f)

        return MD.MultiDomain.yieldMultiDomain(
                mdProperties['domains'],
                mdProperties['meshDegree'],
                mdProperties['fatTreeDegrees'],
                mdProperties['meshLnkRes'],
                mdProperties['fatLnkRes'],
                mdProperties['servRes'],
                meshProps=mdProperties['meshProps'],
                fatLnkProps=mdProperties['fatLnkProps'],
                fatSrvProps=mdProperties['fatSrvProps'])


