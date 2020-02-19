#!/bin/bash

for i in `cat ~/psych516/EDSD/participants.txt`; do
subj_dir=~/psych516/EDSD/my_dataset/FS_subjdir
freeview -v \
${subj_dir}/${i}/mri/T1.mgz \
-v ${subj_dir}/${i}/mri/lh.hippoAmygLabels-T1.v21.CA.mgz:colormap=lut:opacity=0.3 \
-v ${subj_dir}/${i}/mri/rh.hippoAmygLabels-T1.v21.CA.mgz:colormap=lut:opacity=0.3 \
--viewport coronal \
--layout 1 \
--viewsize 800 800 \
--zoom 1.5 \
--screenshot ~/Desktop/HApng/${i}-AMYHIP.png
done
