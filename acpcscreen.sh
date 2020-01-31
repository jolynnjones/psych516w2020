#!/bin/bash

# For 1 person
#freeview -v \
#~/psych516/EDSD/derivative/sub-FREAD002/sub-FREAD002_T1w_RAS.nii:grayscale=0,800 \
#--viewport sagittal \
#--layout 1 \
#--viewsize 800 800 \
#--zoom 1 \
#--screenshot ~/Desktop/sub-FREAD002_T1w.png

for i in `cat ~/psych516/EDSD/participants.txt`; do
freeview -v \
~/psych516/EDSD/derivative/${i}/${i}_T1w_RAS.nii:grayscale=0,800 \
--viewport sagittal \
--layout 1 \
--viewsize 800 800 \
--zoom 1 \
--screenshot ~/Desktop/${i}_T1w.png
done
