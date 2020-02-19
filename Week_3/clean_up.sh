#!/bin/bash

## Move files to derivative directory

for i in `cat ~/psych516/EDSD/participants.txt`; do 
mkdir -p ~/psych516/EDSD/derivative/${i}/ 
mv -v ~/psych516/EDSD/my_dataset/${i}/anat/*RAS.nii ~/psych516/EDSD/derivative/${i}/ 
mv -v ~/psych516/EDSD/my_dataset/${i}/anat/*FSL.mat ~/psych516/EDSD/derivative/${i}/ 
mv -v ~/psych516/EDSD/my_dataset/${i}/anat/*.mrx ~/psych516/EDSD/derivative/${i}/ 
done

#for i in sub-FREAD001; do 
#mkdir -p ~/psych516/EDSD/derivative/${i}/ 
#mv -v ~/psych516/EDSD/my_dataset/${i}/anat/*RAS.nii ~/psych516/EDSD/derivative/${i}/
#done

