import networkx as nx
import os
import json
import MultiDomain
import math
import itertools
import random
from datetime import datetime
import matplotlib.pyplot as plt

class DomainsGenerator(object):

    """Generates randomly multi-domain graphs"""

    def __init__(self, config):
        """__init__

        :param config: path for configuration file to generate
        """
        # Read JSON config
        cfgF = open(config)
        cfg = json.loads(cfgF.read())
        self.__domains = cfg['domains']
        self.__meshDegree = cfg['meshDegree']
        

    def __genGwMesh(self):
        """Generates the multiple domains GW mesh
        
        :return: networkx instance"""

        # Calc number of mesh links
        gwMesh = nx.cycle_graph(self.__domains)
        possibleLinks = itertools.combinations(
                range(self.__domains), 2)
        possibleLinks = len(list(possibleLinks)) - self.__domains
        numLinks = math.floor(self.__meshDegree * possibleLinks)

        # Add randomly mesh links
        linked, i = 0, 0
        random.seed(datetime.now())
        while linked < numLinks:
            candidates = list(nx.non_neighbors(gwMesh, i))
            if len(candidates) > 0:
                candid = random.randint(0, len(candidates) - 1)
                gwMesh.add_edge(i, candidates[candid])
                linked += 1
            i = (i + 1) % self.__domains

        return gwMesh
        


    def create(self):
        """Creates the multi-domain graphs invoking the multiple generation
        steps.
        
        :return: a MultiDomain instance"""
        gwMesh = self.__genGwMesh()
        circular_pos = nx.circular_layout(gwMesh)
        nx.draw(gwMesh, pos=circular_pos)
        plt.show()
        


if __name__ == "__main__":
    generator = DomainsGenerator('config/generator.json')
    generator.create()

