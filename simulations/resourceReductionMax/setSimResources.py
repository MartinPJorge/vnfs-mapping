import json
import os
import sys

absPath = os.path.abspath(os.path.dirname(__file__))
configPath = '/'.join(absPath.split('/')[:-2]) + '/simulation-configs'

if __name__ == '__main__':
    # argv[1] = disk
    # argv[2] = cpu
    # argv[3] = mem
    # [argv[4] = fatBw]
    # [argv[5] = meshBw]

    mdCfg = None

    with open(configPath + '/resourceReductionMax/multiDomain.json') as f:
        mdCfg = json.load(f)
        f.close()

    mdCfg['servRes']['disk']['max'] = float(sys.argv[1])
    mdCfg['servRes']['disk']['min'] = float(sys.argv[1])

    mdCfg['servRes']['cpu']['max'] = float(sys.argv[2])
    mdCfg['servRes']['cpu']['min'] = float(sys.argv[2])

    mdCfg['servRes']['memory']['max'] = float(sys.argv[3])
    mdCfg['servRes']['memory']['min'] = float(sys.argv[3])

    if len(sys.argv) > 4:
        mdCfg['fatLnkRes']['bw']['max'] = float(sys.argv[4])
        mdCfg['fatLnkRes']['bw']['min'] = float(sys.argv[4])

        mdCfg['meshLnkRes']['bw']['max'] = float(sys.argv[5])
        mdCfg['meshLnkRes']['bw']['min'] = float(sys.argv[5])

    with open(configPath + '/resourceReductionMax/multiDomain.json', 'w') as f:
        json.dump(mdCfg, f)
        f.close()

