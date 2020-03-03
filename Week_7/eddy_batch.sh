#!/bin/bash

curTime=`date +"%Y%m%d-%H%M%S"`
mkdir -p ~/logfiles/EDSD/${curTime}-eddy

for i in `cat ~/psych516/EDSD/participants.txt`; do
	sbatch \
	-o ~/logfiles/EDSD/${curTime}-eddy/o-${i}.txt \
	-e ~/logfiles/EDSD/${curTime}-eddy/e-${i}.txt \
	~/psych516/scripts/eddy_job.sh \
	${i}
	sleep 1
done
