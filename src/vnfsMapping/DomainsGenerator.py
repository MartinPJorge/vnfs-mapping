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

    @staticmethod
    def genProperties():
        """Generates set of properties neccessary for the graphs generation
        :returns: dictionary with the set of properties

        """
        # Specify graph characteristics
        domains = random.randint(2, 8)
        meshDegree = random.random()
        degrees = [4, 6, 8]
        fatTreeDegrees = []
        for _ in range(domains):
            fatTreeDegrees.append(degrees[random.randint(0, len(degrees)-1)])
        
        # Create shared infrastructure
        foreingPods = []
        for domain in range(domains):
            sharedDomainPods = dict()

            for foreignDom in [dom for dom in range(domains)\
                    if dom != domain]:
                foreignDegree = fatTreeDegrees[foreignDom]
                numSharedPods = random.randint(1, foreignDegree)
                sharedPods = range(1, foreignDegree + 1)

                for _ in range(foreignDegree - numSharedPods):
                    del sharedPods[random.randint(0, len(sharedPods)-1)]
                sharedDomainPods[str(foreignDom)] = sharedPods

            foreingPods.append(sharedDomainPods)

        # Links and server resources
        meshLnkRes = {
            'bw': {
                'min': 1000,
                'max': 3000
            },
            'delay': {
                'min': 1,
                'max': 3
            }
        }
        fatLnkRes = meshLnkRes
        servRes = {
            'memory': {
                'min': 1,
                'max': 128000
            },
            'cpu': {
                'min': 1,
                'max': 16
            },
            'disk': {
                'min': 1,
                'max': 2000000000
            }
        }

        return {
            'domains': domains,
            'meshDegree': meshDegree,
            'fatTreeDegrees': fatTreeDegrees,
            'foreignPods': foreingPods,
            'meshLnkRes': meshLnkRes,
            'fatLnkRes': fatLnkRes,
            'servRes': servRes
        }


    def __init__(self, domains, meshDegree, fatTreeDegrees, meshLnkRes,
            fatLnkRes, servRes):
        """__init__

        :param domains: number of domains composing the graph
        :param meshDegree: connectivity degree of the mesh (0, 1)
        :param fatTreeDegrees: list of fat-tree degrees for each domain
        :param meshLnkRes: dictionary with mesh links resources thresholds
        :param fatLnkRes: dictionary with fat-tree link resources thresholds
        :param serverRes: dictionary with server resources thresholds
        """

        if len(fatTreeDegrees) != domains:
            raise UnboundLocalError('number of domains don\'t match with\
 number of provided degrees')
        else:
            self.__domains = domains
            self.__meshDegree = meshDegree
            self.__lastNodeId = -1
            self.__fatTreeDegrees = fatTreeDegrees
            self.__meshLnkRes = meshLnkRes
            self.__fatLnkRes = fatLnkRes
            self.__servRes = servRes
    
    
    @staticmethod
    def yieldGenerator():
        """Returns an initialized DomainsGenerator instance
        :returns: initialized DomainsGenerator

        """
        properties = DomainsGenerator.genProperties()

        return DomainsGenerator(domains=properties['domains'],
                meshDegree=properties['meshDegree'],
                fatTreeDegrees=properties['fatTreeDegrees'],
                meshLnkRes=properties['meshLnkRes'],
                fatLnkRes=properties['fatLnkRes'],
                servRes=properties['servRes'])


    def __getNextIds(self, numNodes):
        """Obtains the node IDs for the next numNodes
        
        :param numNodes: number of nodes to obtain IDs

        :return: list(string, ...)"""

        nodeIds = range(self.__lastNodeId + 1,
                self.__lastNodeId + 1 + numNodes)
        self.__lastNodeId += numNodes

        return [str(nodeId) for nodeId in nodeIds]


    def __genMeshLnkRes(self):
        """Generates the resources for a mesh link
        :returns: resources dictionary, e.g.: {'resource': ammount, ...}

        """
        bw = random.randint(self.__fatLnkRes['bw']['min'],
                self.__fatLnkRes['bw']['max'])
        delay = random.randint(self.__fatLnkRes['delay']['min'],
                self.__fatLnkRes['delay']['max'])

        return { 'bw': bw, 'delay': delay }
        


    def __genFatLnkRes(self):
        """Generates the resources for a fat-tree link
        :returns: resources dictionary, e.g.: {'resource': ammount, ...}

        """
        bw = random.randint(self.__fatLnkRes['bw']['min'],
                self.__fatLnkRes['bw']['max'])
        delay = random.randint(self.__fatLnkRes['delay']['min'],
                self.__fatLnkRes['delay']['max'])

        return { 'bw': bw, 'delay': delay }


    def __genServRes(self):
        """Generates the resources for a server
        :returns: resources dictionary, e.g.: {'resource': ammount, ...}

        """
        memory = random.randint(self.__servRes['memory']['min'],
                self.__servRes['memory']['max'])
        cpu = random.randint(self.__servRes['memory']['min'],
                self.__servRes['cpu']['max'])
        disk = random.randint(self.__servRes['disk']['min'],
                self.__servRes['disk']['max'])

        return { 'memory': memory, 'cpu': cpu, 'disk': disk }


    def __attachFatTree(self, gwMesh, gw, k):
        """Attaches a Fat Tree under the GW domain

        :param gwMesh: gw mesh graph
        :param gw: gateway node where FatTree is created
        :param k: FatTree degree (must be even)
        """

        baseId = self.__lastNodeId
        nx.set_node_attributes(gwMesh, 'firstCore', {gw: baseId + 1})
        nx.set_node_attributes(gwMesh, 'k', {gw: k})

        fatLnkRes = self.__genFatLnkRes()

        # Add core switches
        coreSw = (k/2)*(k/2)
        for i in range(1, coreSw + 1):
            gwMesh.add_node(baseId + i, nodeType='r', fatType='core')
            gwMesh.add_edge(gw, baseId + i, res=fatLnkRes,
                    fatLink="True")
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
                            podsBaseId + k*k/2 + i*k/2 + l,
                            res=fatLnkRes, fatLink="True")

        # Links with core switches
        for coreGroup in range(k/2):
            for coreNode in range(coreGroup*k/2 + 1, coreGroup*k/2 + k/2 + 1):
                for pod in range(k):
                    gwMesh.add_edge(baseId + coreNode,
                            podsBaseId + pod*k/2 + 1 + coreGroup,
                            res=fatLnkRes, fatLink="True")

        # Server and links with edge routers
        for edgeR in range(podsBaseId + k*k/2 + 1, podsBaseId + k*k + 1):
            for _ in range(k/2):
                self.__lastNodeId += 1
                gwMesh.add_node(self.__lastNodeId, nodeType='c',
                        fatType='server', res=self.__genServRes())
                gwMesh.add_edge(self.__lastNodeId, edgeR,
                        res=fatLnkRes, fatLink="True")


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
                gwMesh.add_edge(i, candidates[candid],
                        res=self.__genMeshLnkRes(), meshLink='True')
                linked += 1
            i = (i + 1) % self.__domains

        # Add mesh attribute to original cycle edges
        if self.__domains > 1: # Possible to have only have 1 domain
            for gw in range(self.__domains):
                nextGw = 0 if gw == self.__domains - 1 else gw+1
                gwMesh[gw][nextGw]['meshLink'] = 'True'
                gwMesh[gw][nextGw]['res'] = self.__genMeshLnkRes()

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
                    k=self.__fatTreeDegrees[domain])

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
            k = nx.get_node_attributes(domainG, 'k')[foreignDom]
            firstCore = nx.get_node_attributes(domainG,
                    'firstCore')[foreignDom]

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


    def __genProportions(self, domains, allowedProps, nullsCounter):
        """Creates a list of proportions for the resources issuing.

        :domains: number of domains
        :allowedProps: list of allowed integer proportions
        :nullsCounter: list with a counter with the number of remaining null
            resources assignation for each domain
        :returns: a list of integer proportions

        """
        props = []

        for domain in range(domains):
            propIdx = None

            # Avoid having all proportions to zero
            if domain == domains - 1 and reduce(lambda x,y: x+y, props) == 0:
                propIdx = random.randint(1, len(allowedProps) - 1)
            else:
                if nullsCounter[domain] > 0 and random.random() > 0.5:
                    propIdx = random.randint(0, len(allowedProps) - 1)
                    nullsCounter[domain] -= 1
                else:
                    propIdx = random.randint(1, len(allowedProps) - 1)
                props.append(allowedProps[propIdx])

        return props


    def getFatTreeEdges(self, gView, domain):
        """Obtains the domain's fat-tree edges contained within the gView.

        :gView: graph view
        :domain: domain number
        :returns: doubled index dictionary with the edge and it's attributes
            you can iterate through it as (A,B)

        """
        firstCore = nx.get_node_attributes(gView, 'firstCore')[domain]
        k = nx.get_node_attributes(gView, 'k')[domain]
        lastNode = firstCore + k/2*k/2 + k*k + k*k*k/4 - 1

        fatEdges = dict()

        # Get the fat-tree edges
        for (A, B) in nx.get_edge_attributes(gView, 'fatLink'):
            if firstCore <= A <= lastNode and firstCore <= B <= lastNode:
                fatEdges[A,B] = gView[A][B]

        return fatEdges
    

    def getFatTreeServers(self, gView, domain):
        """Obtains the fat-tree servers contained within the gView

        :gView: graph view
        :domain: domain number
        :returns: doubled index dictionary with the edge and it's attributes
            you can iterate through it as (A,B)

        """
        firstCore = nx.get_node_attributes(gView, 'firstCore')[domain]
        k = nx.get_node_attributes(gView, 'k')[domain]
        lastNode = firstCore + k/2*k/2 + k*k + k*k*k/4 - 1

        fatServers = dict()

        # Get the fat-tree edges
        for server in nx.get_node_attributes(gView, 'fatType'):
            fatType = nx.get_node_attributes(gView, 'fatType')[server]
            if firstCore <= server <= lastNode and fatType  == 'server':
                fatServers[server] = nx.get_node_attributes(gView,
                        'res')[server]

        return fatServers


    def issueMeshBw(self, globalView, domainsViews):
        """Issues the mesh bandwidth among the multiple domains
        :globalView: networkX graph with the global infrastructure
        :domainsViews: list of networkX graphs with each domain's view
        :returns: Nothing

        """
        maxNullLinks = 1 # Max number of links without bandwidth
        allowedProps = range(4) # Proportions of bw issuing
        nullsCounter = [maxNullLinks] * self.__domains 

        for (gwA, gwB) in nx.get_edge_attributes(globalView, 'meshLink'):
            props = self.__genProportions(self.__domains, allowedProps,
                    nullsCounter)
            
            baseProp = globalView[gwA][gwB]['res']['bw'] /\
                    reduce(lambda x, y: x + y, props)
            
            # Assign proportions
            for domain in range(self.__domains):
                domainView = domainsViews[domain]
                domainView[gwA][gwB]['res']['bw'] =\
                        math.floor(baseProp * props[domain])


    def issueFatRes(self, globalView, domainsViews):
        """Issues the fat-tree's resources accross the multiple domains

        :globalView: nextworkX graph with the global infrastructure
        :domainsViews: list of networkX graphs with each domain's view
        :returns: Nothing

        """

        # Issue bandwidth
        maxNullLinks = 0 # Max number of links without bandwidth
        allowedProps = range(4) # Proportions of bw issuing
        nullsCounter = [maxNullLinks] * self.__domains 
        
        for domain in range(self.__domains):
            firstCore = nx.get_node_attributes(globalView, 'firstCore')[domain]
            k = nx.get_node_attributes(globalView, 'k')[domain]

            fatLinkBw = globalView[domain][firstCore]['res']['bw']
            domainBw = math.floor(fatLinkBw / 2)
            props = self.__genProportions(self.__domains, allowedProps,
                    nullsCounter)
            props[domain] = 0 # Self domain no proportion on remaining bw
            baseBw = domainBw / reduce(lambda x,y: x+y, props)

            # Assign resources
            for localDom in range(self.__domains):
                localView = domainsViews[localDom]

                for (A, B) in self.getFatTreeEdges(localView, domain):
                    # Link resource
                    if localDom == domain:
                        localView[A][B]['res']['prop'] = props[localDom]
                        localView[A][B]['res']['bw'] = domainBw
                    else:
                        localView[A][B]['res']['prop'] = props[localDom]
                        localView[A][B]['res']['bw'] = math.floor(baseBw *
                                props[localDom])

                    # Server resources
                    server = None
                    if nx.get_node_attributes(localView, 'fatType')[A]\
                            == 'server':
                        server = A
                    elif nx.get_node_attributes(localView, 'fatType')[B]\
                            == 'server':
                        server = B
                    if server != None:
                        servRes = nx.get_node_attributes(globalView,
                                'res')[server]
                        
                        # Iterate through resources and assign
                        resDict = dict()
                        for resource in servRes.keys():
                            halfRes = servRes[resource] / 2

                            res = None
                            if localDom == domain:
                                res = math.floor(halfRes)
                            else:
                                baseRes = halfRes / reduce(lambda x,y: x+y,
                                        props)
                                res = math.floor(baseRes * props[localDom])

                            resDict[resource] = res
                        nx.set_node_attributes(localView, 'res',
                                {server: resDict})
                        


                     



if __name__ == "__main__":
    # Load configuration file
    cfgF = open(os.path.abspath(os.path.dirname(__file__)) +\
            '/config/generator.json')
    cfg = json.loads(cfgF.read())

    # Create the global view graph
    generator = DomainsGenerator(cfg['domains'], cfg['meshDegree'],
            cfg['fatTreeDegrees'])
    globalView = generator.createGlobalView()

