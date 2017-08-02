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
    mapper.freeMappings() 


    # Test with greedy random walk
    print '###############################'
    print '## Greedy search random walk ##'
    print '###############################'
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
                ns, method='random')
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
    mapper.freeMappings() 


    # Test with greedy random walk with backtracking
    print '#####################################'
    print '## Greedy search smart random walk ##'
    print '#####################################'
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
                ns, method='backtracking')
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
    mapper.freeMappings() 


    # Test with greedy BFS up to 11 depth (reach other domains)
    print '##########################'
    print '## Greedy search BFS 11 ##'
    print '##########################'
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
                ns, method='BFS', depth=11)
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
    mapper.freeMappings() 


    # Test with greedy BFS up to 6 depth (reach all within domain)
    print '#########################'
    print '## Greedy search BFS 6 ##'
    print '#########################'
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
                ns, method='BFS', depth=6)
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
    mapper.freeMappings() 



    # Test with greedy BFS up to 4 depth (reach all within domain)
    print '#########################'
    print '## Greedy search BFS 4 ##'
    print '#########################'
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
                ns, method='BFS', depth=4)
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
    mapper.freeMappings() 




    # Test with greedy BFS up to 2 depth (reach all within domain)
    print '#########################'
    print '## Greedy search BFS 2 ##'
    print '#########################'
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
                ns, method='BFS', depth=2)
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
    mapper.freeMappings() 


############################
######### TABU #############
############################

    blocks = 20
    iters = 2


    # Test with tabu search
    print '###################'
    print '## Tabu search ##'
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
        nsmapping = mapper.tabu(entryPoint['domain'], entryPoint['server'],
                ns, blocks, iters, initial='greedy', method='Dijkstra',
                depth=None)
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
    mapper.freeMappings() 


    # Test with tabu random walk
    print '###############################'
    print '## Tabu search random walk ##'
    print '###############################'
    mapper = NSM.NsMapper(md)
    fails = 0
    success = 0
    startTime = time.time()
    i = 0
    for ns, entryPoint in zip(nsBunch, entryPoints):
        print '------------chain' + str(i) + '--------------'
        print ns
        print '-------------------------------'
        nsmapping = mapper.tabu(entryPoint['domain'], entryPoint['server'],
                ns, blocks, iters, initial='greedy', method='random',
                depth=None)
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
    mapper.freeMappings() 


    # Test with tabu random walk with backtracking
    print '#####################################'
    print '## Tabu search smart random walk ##'
    print '#####################################'
    mapper = NSM.NsMapper(md)
    fails = 0
    success = 0
    startTime = time.time()
    i = 0
    for ns, entryPoint in zip(nsBunch, entryPoints):
        print '------------chain' + str(i) + '--------------'
        print ns
        print '-------------------------------'
        nsmapping = mapper.tabu(entryPoint['domain'], entryPoint['server'],
                ns, blocks, iters, initial='greedy', method='backtracking',
                depth=None)
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
    mapper.freeMappings() 


    # Test with tabu BFS up to 11 depth (reach other domains)
    print '##########################'
    print '## Tabu search BFS 11 ##'
    print '##########################'
    mapper = NSM.NsMapper(md)
    fails = 0
    success = 0
    startTime = time.time()
    i = 0
    for ns, entryPoint in zip(nsBunch, entryPoints):
        print '------------chain' + str(i) + '--------------'
        print ns
        print '-------------------------------'
        nsmapping = mapper.tabu(entryPoint['domain'], entryPoint['server'],
                ns, blocks, iters, initial='greedy', method='BFS',
                depth=11)
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
    mapper.freeMappings() 


    # Test with tabu BFS up to 6 depth (reach all within domain)
    print '#########################'
    print '## Tabu search BFS 6 ##'
    print '#########################'
    mapper = NSM.NsMapper(md)
    fails = 0
    success = 0
    startTime = time.time()
    i = 0
    for ns, entryPoint in zip(nsBunch, entryPoints):
        print '------------chain' + str(i) + '--------------'
        print ns
        print '-------------------------------'
        nsmapping = mapper.tabu(entryPoint['domain'], entryPoint['server'],
                ns, blocks, iters, initial='greedy', method='BFS',
                depth=6)
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
    mapper.freeMappings() 



    # Test with tabu BFS up to 4 depth (reach all within domain)
    print '#########################'
    print '## Tabu search BFS 4 ##'
    print '#########################'
    mapper = NSM.NsMapper(md)
    fails = 0
    success = 0
    startTime = time.time()
    i = 0
    for ns, entryPoint in zip(nsBunch, entryPoints):
        print '------------chain' + str(i) + '--------------'
        print ns
        print '-------------------------------'
        nsmapping = mapper.tabu(entryPoint['domain'], entryPoint['server'],
                ns, blocks, iters, initial='greedy', method='BFS',
                depth=4)
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
    mapper.freeMappings() 




    # Test with tabu BFS up to 2 depth (reach all within domain)
    print '#########################'
    print '## Tabu search BFS 2 ##'
    print '#########################'
    mapper = NSM.NsMapper(md)
    fails = 0
    success = 0
    startTime = time.time()
    i = 0
    for ns, entryPoint in zip(nsBunch, entryPoints):
        print '------------chain' + str(i) + '--------------'
        print ns
        print '-------------------------------'
        nsmapping = mapper.tabu(entryPoint['domain'], entryPoint['server'],
                ns, blocks, iters, initial='greedy', method='BFS',
                depth=2)
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
    mapper.freeMappings() 













