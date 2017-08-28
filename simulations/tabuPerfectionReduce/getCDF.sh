#!/bin/bash - 
#===============================================================================
#
#          FILE: getCDF.sh
# 
#         USAGE: ./getCDF.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 28/08/17 19:26
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

INFILE='/tmp/a.txt'
TMPFILE='/tmp/inter.txt'
CDFILE='/tmp/cdf.txt'
NUMSTEPS=10

grep -E '[0-9]+.*(OK|ERR)$' $INFILE > $TMPFILE
mappings=`wc -l $TMPFILE`

sort -n $TMPFILE -k2 > $TMPFILE
minTime=`head -n1 | cut -f2`
maxTime=`tail -n1 $TMPFILE | cut -f2`

step=`echo "scale=2; ($maxTime - $minTime) / $NUMSTEPS" | bc`
echo "#time percent" > $CDFILE
echo -e "$minTime\t0" >> $CDFILE

agg=0
currTime=`echo "scale=2; $minTime + $step" | bc`
while read -r line; do
    time=`echo $line | cut -f2`
    if [[ `echo "$time <= $currTime" | bc` -eq 0 ]]; then
        aggPer=`echo "scale=2; $agg / $mappings" | bc`
        echo -e "$currTime\t$aggPer" >> CDFILE
        currTime=`echo "scale=2; $currTime + $step" | bc`
    fi
    (( agg++ ))
done < $TMPFILE

aggPer=`echo "scale=2; $agg / $mappings" | bc`
echo -e "$currTime\t$aggPer" >> CDFILE
