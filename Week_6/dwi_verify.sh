#!/bin/bash

subj_dir=~/psych516/EDSD/my_dataset

for i in `cat ~/psych516/EDSD/participants.txt`; do
c4d ${subj_dir}/${i}/dwi/${i}_dwi.nii.gz -info-full | grep -Ewo "dim\[4\] = [0-9]{1,3}" | cut -d = -f2
cat ${subj_dir}/${i}/dwi/${i}_dwi.bval | wc -w
head ${subj_dir}/${i}/dwi/${i}_dwi.bvec | wc -w  

done

