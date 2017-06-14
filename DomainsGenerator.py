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
        self.__lastNodeId = -1
        

    def __getNextIds(self, numNodes):
        """Obtains the node IDs for the next numNodes
        
        :param numNodes: number of nodes to obtain IDs

        :return: list(string, ...)"""

        nodeIds = range(self.__lastNodeId + 1,
                self.__lastNodeId + 1 + numNodes)
        self.__lastNodeId += numNodes

        return [str(nodeId) for nodeId in nodeIds]


    def __attachFatTree(self, gwMesh, gw, k):
        """Attaches a Fat Tree under the GW domain

        :param gwMesh: gw mesh graph
        :param gw: gateway node where FatTree is created
        :param k: FatTree degree (must be even)
        """

        baseId = self.__lastNodeId

        # Add core switches
        coreSw = (k/2)*(k/2)
        for i in range(1, coreSw + 1):
            gwMesh.add_node(baseId + i)
            gwMesh.add_edge(gw, baseId + i)
            self.__lastNodeId += 1

        # Create pods
        podsBaseId = self.__lastNodeId
        for i in range(k):
            # Create pod
            for j in range(1, k/2 + 1):
                gwMesh.add_node(podsBaseId + i*k/2 + j)
                gwMesh.add_node(podsBaseId + k*k/2 + i*k/2 + j)
                self.__lastNodeId += 2
            # In-pod links
            for j in range(1, k/2 + 1):
                for l in range(1, k/2 + 1):
                    gwMesh.add_edge(podsBaseId + i*k/2 + j,
                            podsBaseId + k*k/2 + i*k/2 + l)

        # Links with core switches
        for coreGroup in range(k/2):
            for coreNode in range(coreGroup*k/2 + 1, coreGroup*k/2 + k/2 + 1):
                for pod in range(k):
                    gwMesh.add_edge(baseId + coreNode, podsBaseId + pod*k/2 + 1
                            + coreGroup)

        # Server and links with edge routers
        for edgeR in range(podsBaseId + k*k/2 + 1, podsBaseId + k*k + 1):
            for _ in range(k/2):
                self.__lastNodeId += 1
                gwMesh.add_node(self.__lastNodeId)
                gwMesh.add_edge(self.__lastNodeId, edgeR)


    def __genGwMesh(self):
        """Generates the multiple domains GW mesh
        
        :return: networkx instance"""

        # Calc number of mesh links
        gwMesh = nx.cycle_graph(self.__domains)
        _ = self.__getNextIds(self.__domains)
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
        self.__attachFatTree(gwMesh, gw=1, k=2)

        # Draw
        circular_pos = nx.circular_layout(gwMesh)
        nx.draw(gwMesh, pos=circular_pos)
        plt.show()
        


if __name__ == "__main__":
    generator = DomainsGenerator('config/generator.json')
    generator.create()

