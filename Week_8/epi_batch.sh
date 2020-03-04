#!/bin/bash

curTime=`date +"%Y%m%d-%H%M%S"`
mkdir -p ~/logfiles/EDSD/${curTime}-epi

for i in `cat ~/psych516/EDSD/participants.txt`; do
	sbatch \
	-o ~/logfiles/EDSD/${curTime}-epi/o-${i}.txt \
	-e ~/logfiles/EDSD/${curTime}-epi/e-${i}.txt \
	~/psych516/scripts/epi_job.sh \
	${i}
	sleep 1
done
