#!/bin/bash

## DOWNLOAD ENIGMA ROIs
#cd ~/research_bin
#wget http://enigma.ini.usc.edu/wp-content/uploads/2012/06/ROIextraction_info.zip
#unzip ROIextraction_info.zip 
#rm ROIextraction_info.zip

## PART 1 - CREATE INDIVIDUAL SUBJECT ROI FILES FOR FA
#TBSS=~/psych516/EDSD/tbss
#DTI=FA # Set to FA, RD, MD, or AD
#mkdir -p ${TBSS}/ROI/part1/${DTI}
#for SUJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  ~/research_bin/ROIextraction_info/singleSubjROI_exe \
#  ~/research_bin/ROIextraction_info/ENIGMA_look_up_table.txt \
#  ~/research_bin/ROIextraction_info/mean_FA_skeleton.nii.gz \
#  ~/research_bin/ROIextraction_info/JHU-WhiteMatter-labels-1mm.nii.gz \
#  ${TBSS}/ROI/part1/${DTI}/${SUJ}_ROIout \
#  ${TBSS}/${DTI}-individ/${SUJ}/stats/${SUJ}_masked_${DTI}skel.nii.gz
#done

## PART 1 - CREATE INDIVIDUAL SUBJECT ROI FILES FOR MD
#TBSS=~/psych516/EDSD/tbss
#DTI=MD # Set to FA, RD, MD, or AD
#mkdir -p ${TBSS}/ROI/part1/${DTI}
#for SUJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  ~/research_bin/ROIextraction_info/singleSubjROI_exe \
#  ~/research_bin/ROIextraction_info/ENIGMA_look_up_table.txt \
#  ~/research_bin/ROIextraction_info/mean_FA_skeleton.nii.gz \
#  ~/research_bin/ROIextraction_info/JHU-WhiteMatter-labels-1mm.nii.gz \
#  ${TBSS}/ROI/part1/${DTI}/${SUJ}_ROIout \
#  ${TBSS}/${DTI}-individ/${SUJ}/stats/${SUJ}_masked_${DTI}skel.nii.gz
#done

## PART 1 - CREATE INDIVIDUAL SUBJECT ROI FILES FOR RD
#TBSS=~/psych516/EDSD/tbss
#DTI=RD # Set to FA, RD, MD, or AD
#mkdir -p ${TBSS}/ROI/part1/${DTI}
#for SUJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  ~/research_bin/ROIextraction_info/singleSubjROI_exe \
#  ~/research_bin/ROIextraction_info/ENIGMA_look_up_table.txt \
#  ~/research_bin/ROIextraction_info/mean_FA_skeleton.nii.gz \
#  ~/research_bin/ROIextraction_info/JHU-WhiteMatter-labels-1mm.nii.gz \
#  ${TBSS}/ROI/part1/${DTI}/${SUJ}_ROIout \
#  ${TBSS}/${DTI}-individ/${SUJ}/stats/${SUJ}_masked_${DTI}skel.nii.gz
#done

## PART 1 - CREATE INDIVIDUAL SUBJECT ROI FILES FOR AD
#TBSS=~/psych516/EDSD/tbss
#DTI=AD # Set to FA, RD, MD, or AD
#mkdir -p ${TBSS}/ROI/part1/${DTI}
#for SUJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  ~/research_bin/ROIextraction_info/singleSubjROI_exe \
#  ~/research_bin/ROIextraction_info/ENIGMA_look_up_table.txt \
#  ~/research_bin/ROIextraction_info/mean_FA_skeleton.nii.gz \
#  ~/research_bin/ROIextraction_info/JHU-WhiteMatter-labels-1mm.nii.gz \
#  ${TBSS}/ROI/part1/${DTI}/${SUJ}_ROIout \
#  ${TBSS}/${DTI}-individ/${SUJ}/stats/${SUJ}_masked_${DTI}skel.nii.gz
#done

## PART 2 - LOOP THROUGH TO CREATE ROI FILE
#### REMOVING ROIs NOT OF INTEREST AND 
####### AVERAGING OTHERS
######## FOR FA
#
#TBSS=~/psych516/EDSD/tbss
#DTI=FA # Set to FA, RD, MD, or AD
#mkdir -p ${TBSS}/ROI/part2/${DTI}
#for SUJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  ~/research_bin/ROIextraction_info/averageSubjectTracts_exe \
#  ${TBSS}/ROI/part1/${DTI}/${SUJ}_ROIout.csv \
#  ${TBSS}/ROI/part2/${DTI}/${SUJ}_ROIout_avg.csv
#done

## PART 2 - LOOP THROUGH TO CREATE ROI FILE
#### REMOVING ROIs NOT OF INTEREST AND 
####### AVERAGING OTHERS
######## FOR MD
#TBSS=~/psych516/EDSD/tbss
#DTI=MD # Set to FA, RD, MD, or AD
#mkdir -p ${TBSS}/ROI/part2/${DTI}
#for SUJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  ~/research_bin/ROIextraction_info/averageSubjectTracts_exe \
#  ${TBSS}/ROI/part1/${DTI}/${SUJ}_ROIout.csv \
#  ${TBSS}/ROI/part2/${DTI}/${SUJ}_ROIout_avg.csv
#done

## PART 2 - LOOP THROUGH TO CREATE ROI FILE
#### REMOVING ROIs NOT OF INTEREST AND 
####### AVERAGING OTHERS
######## FOR RD
#TBSS=~/psych516/EDSD/tbss
#DTI=RD # Set to FA, RD, MD, or AD
#mkdir -p ${TBSS}/ROI/part2/${DTI}
#for SUJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  ~/research_bin/ROIextraction_info/averageSubjectTracts_exe \
#  ${TBSS}/ROI/part1/${DTI}/${SUJ}_ROIout.csv \
#  ${TBSS}/ROI/part2/${DTI}/${SUJ}_ROIout_avg.csv
#done

## PART 2 - LOOP THROUGH TO CREATE ROI FILE
#### REMOVING ROIs NOT OF INTEREST AND 
####### AVERAGING OTHERS
######## FOR AD
#TBSS=~/psych516/EDSD/tbss
#DTI=AD # Set to FA, RD, MD, or AD
#mkdir -p ${TBSS}/ROI/part2/${DTI}
#for SUJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  ~/research_bin/ROIextraction_info/averageSubjectTracts_exe \
#  ${TBSS}/ROI/part1/${DTI}/${SUJ}_ROIout.csv \
#  ${TBSS}/ROI/part2/${DTI}/${SUJ}_ROIout_avg.csv
#done

### PART 3 - CREATE SUBJECT LIST FILE FOR FA
#TBSS=~/psych516/EDSD/tbss
#DTI=FA # Set to FA, RD, MD, or AD
#cd ${TBSS}
#for SUJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  echo ${SUJ},${TBSS}/ROI/part2/${DTI}/${SUJ}_ROIout_avg.csv >> subjectList-${DTI}.csv
#done

### PART 3 - CREATE SUBJECT LIST FILE FOR MD
#TBSS=~/psych516/EDSD/tbss
#DTI=MD # Set to FA, RD, MD, or AD
#cd ${TBSS}
#for SUJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  echo ${SUJ},${TBSS}/ROI/part2/${DTI}/${SUJ}_ROIout_avg.csv >> subjectList-${DTI}.csv
#done

### PART 3 - CREATE SUBJECT LIST FILE FOR RD
#TBSS=~/psych516/EDSD/tbss
#DTI=RD # Set to FA, RD, MD, or AD
#cd ${TBSS}
#for SUJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  echo ${SUJ},${TBSS}/ROI/part2/${DTI}/${SUJ}_ROIout_avg.csv >> subjectList-${DTI}.csv
#done

### PART 3 - CREATE SUBJECT LIST FILE FOR AD
#TBSS=~/psych516/EDSD/tbss
#DTI=AD # Set to FA, RD, MD, or AD
#cd ${TBSS}
#for SUJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  echo ${SUJ},${TBSS}/ROI/part2/${DTI}/${SUJ}_ROIout_avg.csv >> subjectList-${DTI}.csv
#done

### PART 4 - USE BIDS PARTICIPANTS.TSV FILE
#TBSS=~/psych516/EDSD/tbss
#BIDS=~/psych516/EDSD/my_dataset
#tr '\t' ',' < ${BIDS}/participants.tsv > ${TBSS}/table.csv

## PART 5 - USING R, COMBINE YOUR ROI FILES
### RESULTS LOCATED AT ${TBSS}/ROI/
#### FOR FA
#
#TBSS=~/psych516/EDSD/tbss
#DTI=FA # Set to FA, RD, MD, or AD
#table=${TBSS}/table.csv
#subjectIDcol=participant_id
#subjectList=${TBSS}/subjectList-${DTI}.csv
#outTable=${TBSS}/ROI/${DTI}.csv
#Ncov=0
#covariates=""
#Nroi="all"
#rois="all"
#
#module load r
#R --no-save --slave --args ${table} ${subjectIDcol} ${subjectList} ${outTable} ${Ncov} ${covariates} ${Nroi} ${rois} <  ~/research_bin/ROIextraction_info/combine_subject_tables.R

## PART 5 - USING R, COMBINE YOUR ROI FILES
### RESULTS LOCATED AT ${TBSS}/ROI/
#### FOR MD

TBSS=~/psych516/EDSD/tbss
DTI=MD # Set to FA, RD, MD, or AD
table=${TBSS}/table.csv
subjectIDcol=participant_id
subjectList=${TBSS}/subjectList-${DTI}.csv
outTable=${TBSS}/ROI/${DTI}.csv
Ncov=0
covariates=""
Nroi="all"
rois="all"

module load r
R --no-save --slave --args ${table} ${subjectIDcol} ${subjectList} ${outTable} ${Ncov} ${covariates} ${Nroi} ${rois} <  ~/research_bin/ROIextraction_info/combine_subject_tables.R

## PART 5 - USING R, COMBINE YOUR ROI FILES
### RESULTS LOCATED AT ${TBSS}/ROI/
#### FOR RD

TBSS=~/psych516/EDSD/tbss
DTI=RD # Set to FA, RD, MD, or AD
table=${TBSS}/table.csv
subjectIDcol=participant_id
subjectList=${TBSS}/subjectList-${DTI}.csv
outTable=${TBSS}/ROI/${DTI}.csv
Ncov=0
covariates=""
Nroi="all"
rois="all"

module load r
R --no-save --slave --args ${table} ${subjectIDcol} ${subjectList} ${outTable} ${Ncov} ${covariates} ${Nroi} ${rois} <  ~/research_bin/ROIextraction_info/combine_subject_tables.R

## PART 5 - USING R, COMBINE YOUR ROI FILES
### RESULTS LOCATED AT ${TBSS}/ROI/
#### FOR AD

TBSS=~/psych516/EDSD/tbss
DTI=AD # Set to FA, RD, MD, or AD
table=${TBSS}/table.csv
subjectIDcol=participant_id
subjectList=${TBSS}/subjectList-${DTI}.csv
outTable=${TBSS}/ROI/${DTI}.csv
Ncov=0
covariates=""
Nroi="all"
rois="all"

module load r
R --no-save --slave --args ${table} ${subjectIDcol} ${subjectList} ${outTable} ${Ncov} ${covariates} ${Nroi} ${rois} <  ~/research_bin/ROIextraction_info/combine_subject_tables.R
