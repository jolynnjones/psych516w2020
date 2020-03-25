#!/bin/bash

timeStamp=`date +"%Y%m%d-%H%M%S"`
mkdir -p ~/logfiles/EDSD/${timeStamp}-tbss4
sbatch \
-o ~/logfiles/EDSD/${timeStamp}-tbss4/output.txt \
-e ~/logfiles/EDSD/${timeStamp}-tbss4/error.txt \
~/psych516/scripts/tbss_4_prestats.sh
