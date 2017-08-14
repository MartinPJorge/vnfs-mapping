#!/bin/bash - 
#===============================================================================
#
#          FILE: launcher.sh
# 
#         USAGE: ./launcher.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 14/08/17 19:13
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

resources=`python printSimResources.py`
disk=`echo $resources | grep disk | grep -oe '[0-9]\+'`
cpu=`echo $resources | grep cpu | grep -oe '[0-9]\+'`
memory=`echo $resources | grep memory | grep -oe '[0-9]\+'`
fatBw=`echo $resources | grep fatBw | grep -oe '[0-9]\+'`
meshBw=`echo $resources | grep meshBw | grep -oe '[0-9]\+'`

baseDisk=17
baseCpu=17
baseMem=17

diskStep=`echo "scale=2; ($disk - $baseDisk) / 2" | bc`
cpuStep=`echo "scale=2; ($cpu- $baseCpu) / 2" | bc`
memoryStep=`echo "scale=2; ($memory- $baseMem) / 2" | bc`

diskSteps=`seq -f '%.2f' $disk -$diskStep $baseDisk | sed -e 's/,/\./'`
cpuSteps=`seq -f '%.2f' $cpu -$cpuStep $baseCpu | sed -e 's/,/\./'`
memorySteps=`seq -f '%.2f' $memory -$memoryStep $baseMem | sed -e 's/,/\./'`

currDisk=$disk
currCpu=$cpu
currMem=$memory

while [ $currDisk -ge $baseDisk ] && [ $currCpu -ge $baseCpu ] && [ $currMem -ge $baseMem ]; do
    suffixName="-d=$currDisk-cpu=$currCpu-mem=$currMem.log"
    
    python setSimResources.py $currDisk $currCpu $currMem

    python sim.py greedy Dijkstra d=9 > "results/dijkstra-dpth9--$suffixName"
    python sim.py greedy backtrackingCutoff d=9 > "results/dfs-dpth9--$suffixName"
    python sim.py greedy BFScutoff d=9 > "results/bfs-dpth9--$suffixName"
    python sim.py tabu greedy Dijkstra d=9 i=5 b=3 > "results/tabu-dijkstra-dpth=9i=5b=3--$suffixName"

    (( currDisk -= diskStep ))
    (( currCpu -= cpuStep ))
    (( currMem -= memoryStep ))
done






