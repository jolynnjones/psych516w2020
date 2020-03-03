#!/bin/bash


for i in `cat ~/psych516/EDSD/participants.txt`; do
	work_dir=~/psych516/EDSD/my_dataset/${i}/dwi
	pebandwidth=`grep -w BandwidthPerPixelPhaseEncode ${work_dir}/${i}_dwi.json`
 	pedirection=`grep -w PhaseEncodingDirection ${work_dir}/${i}_dwi.json`
	printf '%s\n' ${pebandwidth} ${pedirection} | paste -sd ' ' >> ~/jsoncheck.csv 
done
