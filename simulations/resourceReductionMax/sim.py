import time
import sys
import random
import os
import json

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../')))
import MultiDomainConfReader as MDR
import NsBunchConfReader as NSBR
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../../src')))
from vnfsMapping import MultiDomain
from vnfsMapping import NS
from vnfsMapping import NsMapper as NSM

absPath = os.path.abspath(os.path.dirname(__file__))
configPath = '/'.join(absPath.split('/')[:-2]) + '/simulation-configs'



usage = """
Script usage:
    sim.py greedy method [d=n]
    sim.py tabu initial method [d=n] [i=n] [b=n]

    algorithm={greedy, tabu}
    initial={greedy}
    method={Dijkstra, random, BFScutoff, backtrackingCutoff}
    d stands for depth
    i stands for iterations (tabu)
    b stands for blocks (tabu)

    WARNING: if iterations is specified, blockings must be specified
"""

supportedAlgs = ['greedy', 'tabu']
supportedMethods = ['Dijkstra', 'random', 'BFScutoff', 'backtrackingCutoff']


def parseArgs(args):
    """Parse the command line arguments

    :args: command line arguments
    :returns: dictionary with parameters, string with explanaition in case of
        error

    """
    blocks = None
    iters = None
    depth = None
    algorithm = None
    method = None
    initial = None
    methodIdx = 2

    if len(args) != 4 and len(args) != 7:
        return usage
    algorithm = args[1]

    if args[1] not in supportedAlgs:
        return usage
    if args[1] == 'tabu':
        initial = args[2]
        methodIdx = 3
    method = args[methodIdx]

    if method not in supportedMethods:
        return usage

    for i in range(methodIdx + 1, len(args)):
        arg, value = args[i].split('=')
        if arg == 'd':
            depth = int(value)
        elif arg == 'i':
            iters = int(value)
        elif arg == 'b':
            blocks = int(value)
        else:
            return usage

    if (iters == None and blocks != None) or\
            (iters != None and blocks == None):
        return usage

    if (args[2] == 'bfs' or args[2] == 'dfs') and not depth:
        return usage

    if args[1] == 'tabu' and (not iters or not blocks):
        return usage


    return {
        'algorithm': algorithm,
        'initial': initial,
        'method': method,
        'depth': depth,
        'iters': iters,
        'blocks': blocks
    }




def createRandMultiDomain(domains, fatDegrees, meshBw, meshDelay, fatBw,
        fatDelay, sMem, sCpu, sDisk, foreigns, pods, meshProps, simName):
    """Generates randomly a JSON file ready to read for the
    MultiDomainConfReader

    :domains: number of domains
    :fatDegrees: list of allowed fat-tree degrees
    :meshBw: {'min':_, 'max':_} mesh bw resources
    :meshDelay: {'min':_, 'max':_} mesh delay resources
    :fatBw: {'min':_, 'max':_} fat-tree bw resources
    :fatDelay: {'min':_, 'max':_} fat-tree delay resources
    :sMem: {'min':_, 'max':_} fat-tree servers memory resources
    :sCpu: {'min':_, 'max':_} fat-tree servers cpu resources
    :sDisk: {'min':_, 'max':_} fat-tree servers disk resources
    :foreigns: number of foreign domains available for a domain
    :pods: {'min':_, 'max':_} number of pods available in foreign domains
    :meshProps: list with mesh resources sharing proportions
    :simName: simulation name
    :returns: Nothing

    """
    mdDict = {
        "name": "tabuPerfection",
        "description": "multiDomain to test the optimal tabu parameters",
        "domains": domains,
        "meshDegree": 1,
        "meshProps": meshProps,
        "meshLnkRes": { "bw": meshBw, "delay": meshDelay },
        "fatLnkRes": { "bw": fatBw, "delay": fatDelay },
        "servRes": {
            "memory": sMem,
            "cpu": sCpu,
            "disk": sDisk
        }
    }

    # Set fat-tree degrees
    fatDegs = [fatDegrees[random.randint(0, len(fatDegrees) - 1)] for _ in
            range(domains)]
    mdDict["fatTreeDegrees"] = fatDegs

    # Generate foreign used domains
    foreignFriends = dict()
    for domain in range(domains):
        friends = range(domains)
        del friends[domain]
        while len(friends) > foreigns:
            idx = random.randint(0, len(friends) - 1)
            del friends[idx]

        foreignFriends[domain] = friends
        print 'foreignFriends[' + str(domain) + '] = ' + str(friends)


    # Initialize proportions arrays
    foreignPods = []
    fatLnkProps = [[0 if other != domain else 1 for other in range(domains)]
            for domain in range(domains)]
    fatSrvProps = [list(domProps) for domProps in fatLnkProps]

    for domain in range(domains):
        sharedPods = {}

        for friend in foreignFriends[domain]:
            fatLnkProps[friend][domain] = 1
            fatSrvProps[friend][domain] = 1
            targetPods = range(1, fatDegs[domain] + 1)
            numPods = random.randint(pods['min'], pods['max'])
            while len(targetPods) > numPods:
                idx = random.randint(0, len(targetPods) - 1)
                del targetPods[idx]
            sharedPods[str(friend)] = targetPods

        foreignPods.append(sharedPods)
    mdDict["fatLnkProps"] = fatLnkProps
    mdDict["fatSrvProps"] = fatSrvProps
    mdDict["foreignPods"] = foreignPods

    with open(configPath + '/' + simName + '/multiDomain.json', 'w') as f:
        json.dump(mdDict, f)













if __name__ == '__main__':
    simName = 'resourceReductionMax'
    argums = parseArgs(sys.argv)

    if type(argums) == str:
        print argums
        sys.exit()

    if not os.path.exists(configPath + '/' + simName + '/multiDomain.json'):
        print 'No MultiDomain JSON: generating it...'
        meshLnkRes =  {
            "bw": {
                "min": 36000,
                "max": 36000
            },
            "delay": {
                "min": 1,
                "max": 2
            }
        }
        fatLnkRes =  {
            "bw": {
                "min": 36000,
                "max": 36000
            },
            "delay": {
                "min": 1,
                "max": 2
            }
        }
        servRes =  {
            "memory": {
                "min": 2400,
                "max": 2400
            },
            "cpu": {
                "min": 600,
                "max": 600
            },
            "disk": {
                "min": 1500,
                "max": 1500
            }
        }
        pods = {
            'min': 1,
            'max': 4
        }
        domains = 20
        meshProps = [1 for _ in range(domains)]

        createRandMultiDomain(domains, [4], meshLnkRes["bw"],
                meshLnkRes["delay"], fatLnkRes["bw"], fatLnkRes["delay"],
                servRes['memory'], servRes['cpu'], servRes['disk'], 9, pods,
                meshProps, simName)

    # Create the readers
    multiDomainR = MDR.MultiDomainConfReader(simName)
    nsBunchR = NSBR.NsBunchConfReader(simName)
    
    # Obtain multidomain and nsBunch
    md = multiDomainR.readDumped()
    if not md:
        print 'not created yet'
        md = multiDomainR.read()
    nsBunch, entryPoints = nsBunchR.readDumped(multiDomain=md)
    if not nsBunch:
        nsBunch, entryPoints = nsBunchR.read(multiDomain=md)

    mapper = NSM.NsMapper(md)


    print '#req\ttime (sec)\tavg. time (sec)\tmapping'

    # Variables
    fails = 0
    success = 0
    improved = 0
    startTime = time.time()
    i = 0
    aggTime = 0
    windowSize = 10
    window = []
    currAvg = 0

    # Mapping loop
    for ns, entryPoint in zip(nsBunch, entryPoints):
        chainStart = chainEnd = 0
        nsmapping = None

        # Launch mapping
        if argums['algorithm'] == 'greedy':
            chainStart = time.time()
            nsmapping = mapper.greedy(entryPoint['domain'],
                    entryPoint['server'], ns, method=argums['method'],
                    depth=argums['depth'])
            chainEnd = time.time()
        elif argums['algorithm'] == 'tabu':
            chainStart = time.time()
            nsmapping = mapper.tabu(entryPoint['domain'], entryPoint['server'],
                    ns, argums['blocks'], argums['iters'],
                    initial=argums['initial'], method=argums['method'],
                    depth=argums['depth'])
            chainEnd = time.time()

        # Window average
        if len(window) < windowSize:
            window.append(chainEnd - chainStart)
            currAvg = 0
        else:
            window = window[1:] + [chainEnd - chainStart]
            currAvg = reduce(lambda t1, t2: t1 + t2, window) / len(window)

        # Success rate
        if nsmapping != None:
            success += 1
            improved += 1 if nsmapping.hasImproved() else 0
        else:
            fails += 1

        print '%d\t%.3f\t%.3f\t%s' % (i, chainEnd - chainStart, currAvg,
                'OK' if nsmapping != None else 'ERR')
        sys.stdout.flush()
        aggTime += chainEnd - chainStart
        i += 1
    endTime = time.time()
    
    print '\n---- Final results ----'
    print str(len(nsBunch)) + ' NS requests'
    print str(fails) + ' failed requests'
    print str(success) + ' success requests'
    print str(improved) + ' improved requests'
    print '%.3f %s' % (aggTime, 'ellapsed time')

