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

        if not remSplits > 0 or not remBranches > 0 or not remVNFs >= 2:
            return False
        else:
            return True
        

    def __canInsertVnf(self, branchHeads, remVNFs):
        """Checks if a VNF can be added to the current NS chain

        :branchHeads: list of all branches' heads
        :remVNFs: remaining VNFs to be inserted in the NS chain
        :returns: Nothing

        """

        return remVNFs > 0
        

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


    def __splitChain(self, chain, branchHeads, splitWidth, remBranches, remVNFs):
        """Randomly splits a NS chain

        :chain: NS chain
        :branchHeads: list of all branches' heads
        :splitWidth: maximum number of branches coming out of a split
        :remBranches: number of remaining branches to be created
        :remVNFs: remaining VNFs to be inserted in the NS chain
        :returns: (list of new branch heads, number of new branches)

        """
        
        vnfIdx = random.randint(0, len(branchHeads) - 1)
        predecesor = branchHeads[vnfIdx]
        newVnfId = max(branchHeads)

        # Decide split length and insert new VNFs after the split
        newVnfs = []
        maxSplitW = min(splitWidth, remBranches + 1, remVNFs)
        splitW = random.randint(2, maxSplitW)
        for i in range(1, splitW + 1):
            newVnfs.append(newVnfId + i)
            self.__insertVNF(chain, branchHeads, [predecesor],
                    vnfId=newVnfId + i)

        del branchHeads[vnfIdx]

        return branchHeads + newVnfs, splitW - 1


    def yieldChain(self, splits, splitWidth, branches, vnfs):
        """Yields a generated NS chain with a maximum number of splits,
        branches and a certain number a vnfs.

        :splits: maximum number of splits in the NS chain
        :splitWidth: maximum number of branches coming out of a split
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
        maxSplitW = 0
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
                    branchHeads, newBranches = self.__splitChain(chain,
                            branchHeads, splitWidth, remBranches, remVNFs)
                    remVNFs -= newBranches + 1
                    remBranches -= newBranches
                    remSplits -= 1
                    madeDecision = True

                    # Refresh counters
                    if branches - remBranches > maxBranches:
                        maxBranches = branches - remBranches
                    if splits - remSplits > maxSplits:
                        maxSplits = splits - remSplits
                    if maxSplitW < newBranches + 1:
                        maxSplitW = newBranches + 1

                i += 1

        # Add starting and ending link requirements and star/end points
        chain.add_node('start')
        self.__createLink(chain, 'start', 1)

        ns = NS.NS()
        ns.setChain(chain)
        ns.setBranchNum(maxBranches)
        ns.setSplitsNum(maxSplits)
        ns.setMaxSplitW(maxSplitW)

        return ns

