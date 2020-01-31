#!/bin/bash

#DCM2NIIX for T1 images

#for i in `ls ~/psych516/EDSD/participants.tsv`; do \
#sub_dir=~/psych516/EDSD/$i
#~/research_bin/dcm2niix/build/bin/dcm2niix \
#-o ~/psych516/EDSD/my_dataset/$i/anat/ \ # output file
#-x n \ # do not crop
#-f T1w \ # save file as 
#-z n \ # do not zip
#${sub_dir}/DICOM/mprage
#done

#DCM2NIX for 1 person 
#~/research_bin/dcm2niix/build/bin/dcm2niix \
#-o ~/psych516/EDSD/my_dataset/sub-FREAD001/anat/ \
#-x n \
#-f T1w \
#-z n \
#~/psych516/EDSD/sub-FREAD001/DICOM/mprage

#Trying with renamed files: this one worked 
for i in `cat ~/psych516/EDSD/participants.txt`; do \
~/research_bin/dcm2niix/build/bin/dcm2niix \
-o ~/psych516/EDSD/my_dataset/$i/anat/ \
-x n \
-f ${i}_T1w \
-z n \
~/psych516/EDSD/${i}/DICOM/mprage
done

# DCM2NIXX for DWI images

for i in `cat ~/psych516/EDSD/participants.txt`; do \
sub_dir=~/psych516/EDSD/${i}
~/research_bin/dcm2niix/build/bin/dcm2niix \
-o ~/psych516/EDSD/my_dataset/${i}/dwi/ \
-f ${i}_dwi \
-z y \
${sub_dir}/DICOM/diff
done

