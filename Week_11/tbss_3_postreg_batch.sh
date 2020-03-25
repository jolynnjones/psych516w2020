#!/bin/bash

timeStamp=`date +"%Y%m%d-%H%M%S"`
mkdir -p ~/logfiles/EDSD/${timeStamp}-tbss3
sbatch \
-o ~/logfiles/EDSD/${timeStamp}-tbss3/output.txt \
-e ~/logfiles/EDSD/${timeStamp}-tbss3/error.txt \
~/psych516/scripts/tbss_3_postreg.sh
