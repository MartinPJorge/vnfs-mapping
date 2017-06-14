import networkx as nx


class Multidomain(object):

    """Wrapper class to operate with the graphs associated to the multiple
    domains contained in a multi-domain scenario."""

    def __init__(self, domains):
        """__init__

        :param domains: array of networkx graphs
        """
        self.__domains = domains

