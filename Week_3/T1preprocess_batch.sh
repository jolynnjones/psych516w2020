#!/bin/bash

curTime=`date +"%Y%m%d-%H%M%S"`
mkdir -p ~/logfiles/EDSD/${curTime}-t1

for i in `cat ~/psych516/EDSD/participants.txt`; do
	sbatch \
	-o ~/logfiles/EDSD/${curTime}-t1/o-${i}.txt \
	-e ~/logfiles/EDSD/${curTime}-t1/e-${i}.txt \
	~/psych516/scripts/T1preprocess_job.sh \
	${i}
	sleep 1
done
