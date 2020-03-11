#!/bin/bash

curTime=`date +"%Y%m%d-%H%M%S"`
mkdir -p ~/logfiles/EDSD/${curTime}-tensors

for i in `cat ~/psych516/EDSD/participants.txt`; do
	sbatch \
	-o ~/logfiles/EDSD/${curTime}-tensors/o-${i}.txt \
	-e ~/logfiles/EDSD/${curTime}-tensors/e-${i}.txt \
	~/psych516/scripts/tensors_job.sh \
	${i}
	sleep 1
done
