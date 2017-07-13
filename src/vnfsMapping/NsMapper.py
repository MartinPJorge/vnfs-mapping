

class NsMapper(object):

    """A class to map NS chains in the MultiDomain graphs"""

    def __init__(self, multiDomain):
        """Initialize a NS mapper with the multi-domain graph where it will
        perform the mapping algorithms

        :multiDomain: MultiDomain instance

        """
        self._multiDomain = multiDomain
        

    def greedy(self, entryDomain, exitDomain, ns):
        """Performs a greedy mapping for the NS chain passed as argument

        :entryDomain: entry domain GW for the NS chain
        :exitDomain: exit domain GW for the NS chain
        :ns: NS chain instance
        :returns: True/False if the mapping can be performed

        """
        
        pass


