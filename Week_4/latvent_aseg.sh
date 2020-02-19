#!/bin/bash

#export SUBJECTS_DIR=~/psych516/EDSD/my_dataset/FS_subjdir
#cd ~/psych516/EDSD/my_dataset/FS_subjdir

export SUBJECTS_DIR=~/psych516/EDSD/my_dataset/FS_bigv_subjdir
cd ~/psych516/EDSD/my_dataset/FS_bigv_subjdir

SUBJ_DIR=~/psych516/EDSD/participants.txt 
asegstats2table \
--subjectsfile ${SUBJ_DIR} \
--meas volume \
--skip \
--delimiter comma \
--tablefile ${SUBJECTS_DIR}/aseg-big_ventricles.csv
