#!/bin/bash

export SUBJECTS_DIR=~/psych516/EDSD/my_dataset/FS_subjdir
cd ~/psych516/EDSD/my_dataset/FS_subjdir
SUBJ_DIR=~/psych516/EDSD/participants.txt

## LH hipposubfield
asegstats2table \
--subjectsfile ${SUBJ_DIR} \
--statsfile=hipposubfields.lh.T1.v21.stats \
--skip \
--delimiter comma \
--tablefile ${SUBJECTS_DIR}/hipposubfields-lh-stats.csv

## RH hipposubfield
asegstats2table \
--subjectsfile ${SUBJ_DIR} \
--statsfile=hipposubfields.rh.T1.v21.stats \
--skip \
--delimiter comma \
--tablefile ${SUBJECTS_DIR}/hipposubfields-rh-stats.csv

## LH amygdalar-nuclei
asegstats2table \
--subjectsfile ${SUBJ_DIR} \
--statsfile=amygdalar-nuclei.lh.T1.v21.stats \
--skip \
--delimiter comma \
--tablefile ${SUBJECTS_DIR}/amygdalar-nuclei-lh-stats.csv

## RH amygdalar-nuclei
asegstats2table \
--subjectsfile ${SUBJ_DIR} \
--statsfile=amygdalar-nuclei.rh.T1.v21.stats \
--skip \
--delimiter comma \
--tablefile ${SUBJECTS_DIR}/amygdalar-nuclei-rh-stats.csv
