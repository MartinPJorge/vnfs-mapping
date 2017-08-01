import MultiDomainConfReader as MDR
import NsBunchConfReader as NSBR
import time
import sys
import os

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),
    '../src')))

from vnfsMapping import MultiDomain
from vnfsMapping import NS
from vnfsMapping import NsMapper as NSM


if __name__ == '__main__':
    simName = 'overDimensioned'

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

    # Test with greedy search
    print '###################'
    print '## Greedy search ##'
    print '###################'
    mapper = NSM.NsMapper(md)
    fails = 0
    success = 0
    startTime = time.time()
    i = 0
    for ns, entryPoint in zip(nsBunch, entryPoints):
        print '------------chain' + str(i) + '--------------'
        print ns
        print '-------------------------------'
        nsmapping = mapper.greedy(entryPoint['domain'], entryPoint['server'],
                ns)
        if nsmapping != None:
            success += 1
            print '--------------------------------'
            print nsmapping
            print '--------------------------------'
        else:
            fails += 1
            print '--------------------------------'
            print '-- mapping failed'
            print '--------------------------------'
        i += 1
    endTime = time.time()
    
    print str(len(nsBunch)) + ' NS requests'
    print str(fails) + ' failed requests'
    print str(success) + ' success requests'
    print str(endTime - startTime)
     


