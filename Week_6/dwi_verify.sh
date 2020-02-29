#!/bin/bash

subj_dir=~/psych516/EDSD/my_dataset
printf '%s\n' id volumes bval bvec | paste -sd ' ' >> ~/verify.csv

for i in `cat ~/psych516/EDSD/participants.txt`; do
id=`cat ~/psych516/EDSD/participants.txt`
volumes=`c4d ${subj_dir}/${i}/dwi/${i}_dwi.nii.gz -info-full | grep -Ewo "dim\[4\] = [0-9]{1,3}" | cut -d = -f2`
bval=`cat ${subj_dir}/${i}/dwi/${i}_dwi.bval | wc -w`
bvec=`head -n 1 ${subj_dir}/${i}/dwi/${i}_dwi.bvec | wc -w`  
printf '%s\n' ${i} ${volumes} ${bval} ${bvec} | paste -sd ' ' >> ~/verify.csv
done
