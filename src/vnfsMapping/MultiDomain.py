import json
import os
import sys
import networkx as nx
import DomainsGenerator as DG

# Global variable for the project absolute path
absPath = os.path.abspath(os.path.dirname(__file__))
graphsAbsPath = '/'.join(absPath.split('/')[:-2]) + '/graphs'


class MultiDomain(object):

    """Wrapper class to operate with the graphs associated to the multiple
    domains contained in a multi-domain scenario."""

    def __init__(self):
        """__init__
        """
        pass


    def __str__(self):
        """Returns the string representation for the multidomain
        :returns: TODO

        """
        header = '### MultiDomain ###\n'
        domains = '  - domains: ' + str(self.__domains if hasattr(self,
            '_MultiDomain__domains') else str(None)) + '\n'
        meshDegree = '  - meshDegree: ' + str(self.__meshDegree if\
                hasattr(self, '_MultiDomain__meshDegree') else str(None)) + '\n'
        fatTreeDegrees = '  - fatTreeDegrees: ' + str(self.__fatTreeDegrees\
                if hasattr(self, '_MultiDomain__fatTreeDegrees') else str(None)) + '\n'
        meshLnkRes = '  - meshLnkRes: ' + str(self.__meshLnkRes\
                if hasattr(self, '_MultiDomain__meshLnkRes') else str(None)) + '\n'
        fatLnkRes = '  - fatLnkRes: ' + str(self.__fatLnkRes\
                if hasattr(self, '_MultiDomain__fatLnkRes') else str(None)) + '\n'
        servRes = '  - servRes: ' + str(self.__servRes\
                if hasattr(self, '_MultiDomain__servRes') else str(None)) + '\n'
        foreignPods = '  - foreignPods: ' + str(self.__foreignPods\
                if hasattr(self, '_MultiDomain__servRes') else str(None)) + '\n'

        return header + domains + meshDegree + fatTreeDegrees + meshLnkRes +\
            fatLnkRes + servRes + foreignPods


    @staticmethod
    def yieldMultiDomain(domains, meshDegree, fatTreeDegrees, meshLnkRes,
            fatLnkRes, servRes):
        """Generates a MultiDomain based on the specified arguments

        :param domains: number of domains composing the graph
        :param meshDegree: connectivity degree of the mesh (0, 1)
        :param fatTreeDegrees: list of fat-tree degrees for each domain
        :param meshLnkRes: dictionary with mesh links resources thresholds
        :param fatLnkRes: dictionary with fat-tree link resources thresholds
        :param serverRes: dictionary with server resources thresholds

        """

        multiDomain = MultiDomain()
        multiDomain.initialize(domains, meshDegree, fatTreeDegrees, meshLnkRes,
            fatLnkRes, servRes)
        
        return multiDomain
        

    @staticmethod
    def yieldRandMultiDomain():
        """Create a random MultiDomain graph instance
        :returns: Multidomain instance

        """
        properties = DG.DomainsGenerator.genProperties()

        multidomain = MultiDomain()
        multidomain.setProperties(properties)
        multidomain.initialize(multidomain.__domains, multidomain.__meshDegree,
                multidomain.__fatTreeDegrees, multidomain.__meshLnkRes, multidomain.__fatLnkRes,
                multidomain.__servRes)

        return multidomain
        


    def __getProperties(self):
        """Obtains the set of properties from the MultiDomain instance
        :returns: dictionary with the set of properties

        """
        return {
            'domains': self.__domains,
            'meshDegree': self.__meshDegree,
            'fatTreeDegrees': self.__fatTreeDegrees,
            'foreignPods': self.__foreignPods,
            'meshLnkRes': self.__meshLnkRes,
            'fatLnkRes': self.__fatLnkRes,
            'servRes': self.__servRes
        }
        

    def setProperties(self, properties):
        """Sets the dictionary with the properties specified by argument

        :properties: dictionary with the same keys as the ones returned by
            __getProperties() and the 'globalDomain' and 'domainsViews' are
            optional
        :returns: Nothing

        """
        self.__domains = properties['domains']
        self.__meshDegree = properties['meshDegree']
        self.__fatTreeDegrees = properties['fatTreeDegrees']
        self.__foreignPods = properties['foreignPods']
        self.__meshLnkRes = properties['meshLnkRes']
        self.__fatLnkRes = properties['fatLnkRes']
        self.__servRes = properties['servRes']


        if hasattr(properties, 'globalDomain'):
            self.__globalDomain = properties['globalDomain']
        if hasattr(properties, 'domainsViews'):
            self.__domainsViews = properties['domainsViews']


    def initialize(self, domains, meshDegree, fatTreeDegrees, meshLnkRes,
            fatLnkRes, servRes):
        """Initializes a MultiDomain instance based on specified arguments

        :param domains: number of domains composing the graph
        :param meshDegree: connectivity degree of the mesh (0, 1)
        :param fatTreeDegrees: list of fat-tree degrees for each domain
        :param meshLnkRes: dictionary with mesh links resources thresholds
        :param fatLnkRes: dictionary with fat-tree link resources thresholds
        :param serverRes: dictionary with server resources thresholds
        :returns: Nothing

        """

        if len(fatTreeDegrees) != domains:
            raise UnboundLocalError('number of domains don\'t match with\
 number of provided degrees')
        else:
            self.__domains = domains
            self.__meshDegree = meshDegree
            self.__fatTreeDegrees = fatTreeDegrees
            self.__meshLnkRes = meshLnkRes
            self.__fatLnkRes = fatLnkRes
            self.__servRes = servRes

        # Generate the domain and subdomain views
        generator = DG.DomainsGenerator(domains=self.__domains,
                meshDegree=self.__meshDegree,
                fatTreeDegrees=self.__fatTreeDegrees,
                meshLnkRes=self.__meshLnkRes, fatLnkRes=self.__fatLnkRes,
                servRes=self.__servRes)
        globalView = generator.createGlobalView()
        domainsViews = []
        for domain in range(self.__domains):
            domainsViews.append(generator.createDomainView(globalView, domain,
                self.__foreignPods[domain]))
        generator.issueMeshBw(globalView, domainsViews)
        generator.issueFatRes(globalView, domainsViews)

        self.__globalView = globalView
        self.__domainsViews = domainsViews


    def write(self, storedName):
        """Stores the domains and global view graph

        :storedName: name of the directory that will contain the graph views
        :returns: Nothing

        """
        basePath = absPath + '/' + storedName + '/'

        nx.write_gml(self.__globalView, basePath + '/global.gml')
        
        for domain in range(len(self.__domainsViews)):
            nx.write_gml(domainViews[domain], basePath + 'domain' +
                    str(domain) + '.gml')

        with open(basePath + 'metadata.json', 'w') as f:
             json.dump(self.__getProperties(), f)


    def read(self, storedName):
        """Generates a multidomain instance based on the global and domain
        graph views located under the graphs directory with storedName

        :storedName: name of the directory that will contain the graph views
        :returns: MultiDomain instance

        """
        basePath = absPath + '/' + storedName + '/'

        domainsViews = []
        for domain in range(len(self.__domainsViews)):
            domains.append(nx.read_gml(domainsViews[domain], basePath +
                'domain' + str(domain) + '.gml'))

        globalView = nx.read_gml(basePath + '/global.gml')

        with open(basePath + 'metadata.json', 'r') as f:
            properties = json.load(f)
        properties['globalView'] = globalView
        properties['domainsViews'] = domainsViews

        multiDomain = MultiDomain()
        multiDomain.setProperties(properties)

        return multiDomain

        
    def incrLnkResource(self, domain, A, B, resource, incr):
        """Increments positively/negatively the (A,B) link resource

        :domain: domain number
        :A: first node of the link
        :B: second node of the link
        :resource: resource key
        :incr: integer increment
        :returns: Boolean indicating if the increment was successfull

        """
        
        if domain > self.__domains - 1:
            return False

        if resource != 'bw' or resource != 'delay':
            return False

        # Get the domain link (if it has it)
        domainView = self.__domainsViews[domain]
        if domainView.has_edge(A, B):
            globalRes = self.__globalView[A][B]
            domainRes = domainView[A][B]

            # Not enough resources available
            if incr < 0 and domainRes['res'][resource] < abs(incr):
                return False
            
            self.__globalView[A][B]['res'][resource] += incr
            self.__domainsViews[A][B]['res'][resource] += incr
        else:
            return False

        return True
            

    def incrServerResource(self, domain, A, resource, incr):
        """Increments positively/negatively the server A resource

        :domain: domain number
        :A: server node
        :resource: resource key
        :incr: integer increment
        :returns: Boolean indicating if the increment was successfull

        """
        
        if domain > self.__domains - 1:
            return False

        if resource != 'memory' or resource != 'cpu' or resource != 'disk':
            return False

        # Get the server (if it has it)
        domainView = self.__domainsViews[domain]
        if domainView.has_node(A):
            globalRes = nx.get_node_attributes(self.__globalView, 'res')[A]
            domainRes = nx.get_node_attributes(domainView, 'res')[A]

            # Not enough resources available
            if incr < 0 and domainRes[resource] < abs(incr):
                return False
            
            globalRes[resource] += incr
            domainRes[resource] += incr
            nx.set_node_attributes(self.__globalView, 'res', {A: globalRes})
            nx.set_node_attributes(domainView, 'res', {A: globalRes})
        else:
            return False

        return True



if __name__ == '__main__':
    # md = MultiDomain.yieldRandMultiDomain()
    md = MultiDomain()
    print md

