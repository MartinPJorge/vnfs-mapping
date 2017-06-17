import networkx as nx
import os
import json
import MultiDomain
import math
import itertools
import random
from datetime import datetime
import matplotlib.pyplot as plt
import sys
sys.path.insert(0, os.path.abspath(os.path.dirname(__file__)))

class DomainsGenerator(object):

    """Generates randomly multi-domain graphs"""

    def __init__(self, domains, meshDegree, fatTreeDegrees):
        """__init__

        :param domains: number of domains composing the graph
        :param meshDegree: connectivity degree of the mesh (0, 1)
        :param fatTreeDegrees: list of fat-tree degrees for each domain
        """

        if len(fatTreeDegrees) != domains:
            raise UnboundLocalError('number of domains don\'t match with\
 number of provided degrees')
        else:
            self.__domains = domains
            self.__meshDegree = meshDegree
            self.__lastNodeId = -1
            self.__fatTreeDegrees = fatTreeDegrees
        

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
        nx.set_node_attributes(gwMesh, 'firstCore', {gw: baseId + 1})
        nx.set_node_attributes(gwMesh, 'k', {gw: k})

        # Add core switches
        coreSw = (k/2)*(k/2)
        for i in range(1, coreSw + 1):
            gwMesh.add_node(baseId + i, nodeType='r', fatType='core')
            gwMesh.add_edge(gw, baseId + i)
            self.__lastNodeId += 1

        # Create pods
        podsBaseId = self.__lastNodeId
        for i in range(k):
            # Create pod
            for j in range(1, k/2 + 1):
                gwMesh.add_node(podsBaseId + i*k/2 + j, nodeType='r',
                        fatType='aggregate')
                gwMesh.add_node(podsBaseId + k*k/2 + i*k/2 + j, nodeType='r',
                        fatType='edge')
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
                gwMesh.add_node(self.__lastNodeId, nodeType='c',
                        fatType='server')
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
        
    
    def setFatTreeDegrees(self, degrees):
        """Sets the degrees of each fat-tree.
        If degrees don't match with the number of domains, an exception is
        raised.

        :degrees: list of domain's fat-trees' degrees

        """
        if len(degrees) != self.__domains:
            raise UnboundLocalError('number of domains don\'t match with\
 number of provided degrees')
        else:
            self.__fatTreeDegrees = degrees


    def createGlobalView(self):
        """Creates the graph of the global view
        
        :return: networkX graph instance"""
        globalView = self.__genGwMesh()
        gwMesh = globalView.copy()
        for domain in range(self.__domains):
            self.__attachFatTree(globalView, gw=domain,
                    k=self.__fatTreeDegrees[domain-1])

        return globalView
        

    def createDomainView(self, globalView, domain, foreignPods):
        """Creates the domain view based on the foreign domains to which it
        have access.

        :globalView: networkX of the global view
        :domain: domain number
        :foreignPods: { "domainNumber": [podNumber1, ..., podNumberN], ... }
        :returns: networkX graph with the domain view

        """
        domainG = globalView.copy()

        for foreignDom in [dom for dom in range(self.__domains)
                if dom != domain]:
            k = domainG[foreignDomain]['k']
            firstCore = domainG[foreignDomain]['firstCore']

            # If the foreign domain don't share pods
            if str(foreignDom) not in foreignPods.keys():
                lastFatTreeNode = firstCore - 1 + k/2*k/2 + k*k + k*k*k/4
                domainG.remove_nodes_from(range(firstCore,
                    lastFatTreeNode + 1))

            # Foreign domain shares one or more pods
            else:
                sharedPods = foreignPods[str(foreignDom)]
                deletePods = [pod for pod in range(1, k + 1)
                        if pod not in sharedPods]
                for deletePod in deletePods:
                    # Remove aggregation switches
                    firstAgg = k/2*k/2 + (deletePod-1)*k/2 + firstCore
                    lastAgg = firstAgg + k/2 - 1
                    domainG.remove_nodes_from(range(firstAgg, lastAgg + 1))

                    # Remove edge switches
                    firstEdge = k/2*k/2 + k*k/2 + (deletePod-1)*k/2 + firstCore
                    lastEdge = firstEdge + k/2 - 1
                    domainG.remove_nodes_from(range(firstEdge, lastEdge + 1))

                    # Remove servers
                    firstServer = k/2*k/2 + k*k + (deletePod-1)*k/2*k/2 +\
                        firstCore
                    lastServer = firstServer + k/2*k/2 - 1
                    domainG.remove_nodes_from(range(firstServer,
                        lastServer + 1))

        return domainG



if __name__ == "__main__":
    # Load configuration file
    cfgF = open(os.path.abspath(os.path.dirname(__file__)) +\
            '/config/generator.json')
    cfg = json.loads(cfgF.read())

    # Create the global view graph
    generator = DomainsGenerator(cfg['domains'], cfg['meshDegree'],
            cfg['fatTreeDegrees'])
    globalView = generator.createGlobalView()

