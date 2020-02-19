#!/bin/bash

curTime=`date +"%Y%m%d-%H%M%S"`
mkdir -p ~/logfiles/EDSD/${curTime}-HA

#for i in sub-FREAD001; do
for i in `cat ~/psych516/EDSD/participants.txt`; do
	sbatch \
	-o ~/logfiles/EDSD/${curTime}-HA/o-${i}.txt \
	-e ~/logfiles/EDSD/${curTime}-HA/e-${i}.txt \
	~/psych516/scripts/HAsegment_job.sh \
	${i}
	sleep 1
done
