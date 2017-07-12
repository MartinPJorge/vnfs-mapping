import random
import time
import networkx as nx
import NS

class NSgenerator(object):

    """Generator of NS requests"""

    def __init__(self, bwTh, delayTh, memoryTh, diskTh, cpuTh):
        """Initializes the NS generator with required thresholds

        :bwTh: link bandwidth thresholds {'min', 'max'}
        :delayTh: link delay thresholds {'min', 'max'}
        :memoryTh: server memory thresholds {'min', 'max'}
        :diskTh: server disk thresholds {'min', 'max'}
        :cpuTh: server delay thresholds {'min', 'max'}

        """
        self.__bwTh = bwTh
        self.__delayTh = delayTh
        self.__memoryTh = memoryTh
        self.__diskTh = diskTh
        self.__cpuTh = cpuTh

        self.__branches = None
        self.__split = None
        

    def __createLink(self, chain, vnfA, vnfB):
        """Stablishes a link between VNFs with id vnfA and vnfB

        :chain: NS chain
        :vnfA: id of vnfA
        :vnfB: id of vnfB
        :returns: Nothing

        """
        bw = random.randint(self.__bwTh['min'], self.__bwTh['max'])
        delay = random.randint(self.__delayTh['min'], self.__delayTh['max'])
        chain.add_edge(vnfA, vnfB, bw=bw, delay=delay)


    def __insertVNF(self, chain, branchHeads, predecesors, vnfId=None):
        """Inserts a VNF in the current NS chain. It adds it after the
        predecesors VNF list

        :chain: NS chain
        :branchHeads: list of all branches' heads
        :predecesors: list of VNFs predecesors
        :vnfId: (optional) id of inserted VNF, otherwise it'll have
            max(predecesors) + 1
        :returns: Nothing

        """
        
        memory = random.randint(self.__memoryTh['min'], self.__memoryTh['max'])
        disk = random.randint(self.__diskTh['min'], self.__diskTh['max'])
        cpu = random.randint(self.__cpuTh['min'], self.__cpuTh['max'])

        # Add VNFs and links
        vnfId = max(branchHeads) + 1 if not vnfId else vnfId
        chain.add_node(vnfId, memory=memory, disk=disk, cpu=cpu)
        newBranchHeads = list(branchHeads)
        for predecesor in predecesors:
            newBranchHeads.remove(predecesor)
            self.__createLink(chain, predecesor, vnfId)

        return newBranchHeads + [vnfId]
    

    def __canSplit(self, remSplits, remBranches, remVNFs):
        """Checks if a split can be performed in the creation of the current NS
        chain.

        :remSplits: remaining splits to be performed
        :remBranches: remaining branches to create
        :remVNFs: remaining VNFs to be inserted in the NS chain
        :returns: True/False

        """

        # remVNFs >= 3 because of 2 after split and the end one (2 + 1 = 3)
        if not remSplits > 0 or not remBranches > 0 or not remVNFs >= 3:
            return False
        else:
            return True
        

    def __canInsertVnf(self, branchHeads, remVNFs):
        """Checks if a VNF can be added to the current NS chain

        :branchHeads: list of all branches' heads
        :remVNFs: remaining VNFs to be inserted in the NS chain
        :returns: Nothing

        """

        # In case of last VNF, check if it is needed to join open branches
        finalJoin = False
        if len(branchHeads) > 1 and remVNFs == 1:
            finalJoin = True

        return remVNFs > 0 and not finalJoin # Need a final VNF
        

    def __mustJoin(self, remVNFs):
        """Checks if all branches must be joined

        :remVNFs: remaining VNFs to be inserted in the NS chain
        :returns: True/False

        """
        
        return remVNFs == 1


    def __joinBranches(self, chain, branchHeads, remVNFs):
        """Randomly joins the branches present in the NS chain

        :chain: NS chain
        :branchHeads: list of all branches' heads
        :remVNFs: remaining VNFs to be inserted in the NS chain
        :returns: (number of joined branches, new branch heads)

        """
        
        newBranchHeads = None
        joinNum = 0

        if remVNFs == 1:
            newBranchHeads = self.__insertVNF(chain, branchHeads, branchHeads)
            joinNum = len(branchHeads)
        else:
            joinNum = random.randint(2, len(branchHeads))
            joinVNFs = list(branchHeads)
            
            for _ in range(len(joinVNFs) - joinNum):
                del joinVNFs[random.randint(0, len(joinVNFs) - 1)]
            newBranchHeads = self.__insertVNF(chain, branchHeads, joinVNFs)

        return (joinNum, newBranchHeads)


    def __splitChain(self, chain, branchHeads):
        """Randomly splits a NS chain

        :chain: NS chain
        :branchHeads: list of all branches' heads
        :returns: list of new branch heads

        """
        
        vnfIdx = random.randint(0, len(branchHeads) - 1)
        predecesor = branchHeads[vnfIdx]
        newVnfId = max(branchHeads)

        # Insert new VNFs after the split
        self.__insertVNF(chain, branchHeads, [predecesor], vnfId=newVnfId + 1)
        self.__insertVNF(chain, branchHeads, [predecesor], vnfId=newVnfId + 2)

        del branchHeads[vnfIdx]

        return branchHeads + [newVnfId + 1, newVnfId + 2]


    def yieldChain(self, splits, branches, vnfs):
        """Yields a generated NS chain with a maximum number of splits,
        branches and a certain number a vnfs.

        :splits: maximum number of splits in the NS chain
        :branches: maximum number of branches in the NS chain
        :vnfs: number of VNFs that compose the chain
        :returns: a NS instance

        """
        
        branchHeads = []
        remVNFs = vnfs
        remSplits = splits
        remBranches = branches - 1
        maxBranches = 1
        maxSplits = 1
        chain = nx.Graph()
        decisions = ['insert', 'join', 'split']

        branchHeads = self.__insertVNF(chain, [], [], vnfId=1)
        remVNFs -= 1

        while chain.number_of_nodes() < vnfs:
            random.shuffle(decisions)
            i, madeDecision = 0, False
            
            # Decide wether a new VNF is inserted, or if there is a split or a
            # join in the chain
            while not madeDecision and i < len(decisions):
                if decisions[i] == 'insert' and\
                        self.__canInsertVnf(branchHeads, remVNFs):
                    predecesor = branchHeads[random.randint(0, len(branchHeads)
                        - 1)]
                    branchHeads = self.__insertVNF(chain, branchHeads,
                        [predecesor])
                    remVNFs -= 1
                    madeDecision = True

                elif decisions[i] == 'join' and len(branchHeads) > 1:
                    joined, branchHeads = self.__joinBranches(chain,
                            branchHeads, remVNFs)
                    remVNFs -= 1
                    remBranches += joined - 1
                    madeDecision = True

                elif decisions[i] == 'split' and self.__canSplit(remSplits,
                        remBranches, remVNFs):
                    branchHeads = self.__splitChain(chain, branchHeads)
                    remVNFs -= 2
                    remBranches -= 1
                    remSplits -= 1
                    madeDecision = True

                    # Refresh counters
                    if branches - remBranches > maxBranches:
                        maxBranches = branches - remBranches
                    if splits - remSplits > maxSplits:
                        maxSplits = splits - remSplits

                i += 1

        # Add starting and ending link requirements and star/end points
        chain.add_node('start')
        chain.add_node('end')
        self.__createLink(chain, 'start', 1)
        self.__createLink(chain, vnfs, 'end')

        ns = NS.NS()
        ns.setChain(chain)
        ns.setBranchNum(maxBranches)
        ns.setSplitsNum(maxSplits)

        return ns

