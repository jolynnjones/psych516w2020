#!/bin/bash

#ACPC Align
## No way to direct output to a new directory
for i in `cat ~/Desktop/participants.txt`; do \ 
acpcdetect \
-noppm \
-nopng \
-notxt \
-i ~/Desktop/my_dataset/$i/anat/${i}_T1w.nii
done

