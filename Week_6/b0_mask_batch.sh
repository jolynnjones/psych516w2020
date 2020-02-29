#!/bin/bash

curTime=`date +"%Y%m%d-%H%M%S"`
mkdir -p ~/logfiles/EDSD/${curTime}-symlinkdwi

for i in `cat ~/psych516/EDSD/participants.txt`; do
	sbatch \
	-o ~/logfiles/EDSD/${curTime}-symlinkdwi/o-${i}.txt \
	-e ~/logfiles/EDSD/${curTime}-symlinkdwi/e-${i}.txt \
	~/psych516/scripts/b0_mask_job.sh \
	${i}
	sleep 1
done
