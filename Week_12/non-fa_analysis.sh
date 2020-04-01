#!/bin/bash

## MAKING MD, AD, RD DIRECTORIES
#DIR=~/psych516/EDSD
#mkdir ${DIR}/tbss/MD/
#mkdir ${DIR}/tbss/AD/
#mkdir ${DIR}/tbss/RD/

## COPYING MD AND AD FILES FROM pDWI
#DIR=~/psych516/EDSD
#for SBJ in `cat ~/psych516/EDSD/participants.txt`; do
#cp -v ${DIR}/pDWI/${SBJ}/dwi/dti_MD.nii.gz ${DIR}/tbss/MD/${SBJ}_MD.nii.gz
#cp -v ${DIR}/pDWI/${SBJ}/dwi/dti_L1.nii.gz ${DIR}/tbss/AD/${SBJ}_AD.nii.gz
#done

## CREATING RD IMAGE
#DIR=~/psych516/EDSD
#for SBJ in `cat ~/psych516/EDSD/participants.txt`; do
#fslmaths ${DIR}/pDWI/${SBJ}/dwi/dti_L2.nii.gz \
#-add ${DIR}/pDWI/${SBJ}/dwi/dti_L3.nii.gz \
#-div 2 \
#${DIR}/tbss/RD/${SBJ}_RD.nii.gz
#done

## CHECK BASE CODE - should return sub-i without _FA.nii.gz
#TBSS=~/psych516/EDSD/tbss
#DTI=MD
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
# echo $SBJ
#done

## MAKE DIRECTORIES FOR MD
#TBSS=~/psych516/EDSD/tbss
#DTI=MD
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
# mkdir -p ${TBSS}/${DTI}/origdata/
# mkdir -p ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/
# mkdir -p ${TBSS}/${DTI}-individ/${SBJ}/stats/
#done

## MAKE DIRECTORIES FOR RD
#TBSS=~/psych516/EDSD/tbss
#DTI=RD # Set to MD, RD, or AD
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
# mkdir -p ${TBSS}/${DTI}/origdata/
# mkdir -p ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/
# mkdir -p ${TBSS}/${DTI}-individ/${SBJ}/stats/
#done

## MAKE DIRECTORIES FOR AD
#TBSS=~/psych516/EDSD/tbss
#DTI=AD # Set to MD, RD, or AD
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
# mkdir -p ${TBSS}/${DTI}/origdata/
# mkdir -p ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/
# mkdir -p ${TBSS}/${DTI}-individ/${SBJ}/stats/
#done

## CLEAN UP BRAIN EXTRACTION FOR MD
#TBSS=~/psych516/EDSD/tbss
#DTI=MD # Set to MD, RD, or AD
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  fslmaths ${TBSS}/${DTI}/${SBJ}_${DTI}.nii.gz \
#  -mas ${TBSS}/FA/${SBJ}_FA_FA_mask.nii.gz \
#  ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_${DTI}
#done

## CLEAN UP BRAIN EXTRACTION FOR RD
#TBSS=~/psych516/EDSD/tbss
#DTI=RD # Set to MD, RD, or AD
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  fslmaths ${TBSS}/${DTI}/${SBJ}_${DTI}.nii.gz \
#  -mas ${TBSS}/FA/${SBJ}_FA_FA_mask.nii.gz \
#  ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_${DTI}
#done

## CLEAN UP BRAIN EXTRACTION FOR AD
#TBSS=~/psych516/EDSD/tbss
#DTI=AD # Set to MD, RD, or AD
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  fslmaths ${TBSS}/${DTI}/${SBJ}_${DTI}.nii.gz \
#  -mas ${TBSS}/FA/${SBJ}_FA_FA_mask.nii.gz \
#  ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_${DTI}
#done

## MOVE IMAGES FOR MD
#TBSS=~/psych516/EDSD/tbss
#DTI=MD # Set to MD, RD, or AD
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  immv \
#  ${TBSS}/${DTI}/${SBJ}_* \
#  ${TBSS}/${DTI}/origdata/
#done

## MOVE IMAGES FOR RD
#TBSS=~/psych516/EDSD/tbss
#DTI=RD # Set to MD, RD, or AD
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  immv \
#  ${TBSS}/${DTI}/${SBJ}_* \
#  ${TBSS}/${DTI}/origdata/
#done

## MOVE IMAGES FOR AD
#TBSS=~/psych516/EDSD/tbss
#DTI=AD # Set to MD, RD, or AD
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  immv \
#  ${TBSS}/${DTI}/${SBJ}_* \
#  ${TBSS}/${DTI}/origdata/
#done

## APPLY NORMALIZATION WARP FOR MD
#TBSS=~/psych516/EDSD/tbss
#DTI=MD # Set to MD, RD, or AD
## FSLDIR is already set through environmental variables
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  applywarp \
#  -i ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_${DTI} \
#  -o ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_${DTI}_to_target \
#  -r ${FSLDIR}/data/standard/FMRIB58_FA_1mm \
#  -w ${TBSS}/FA/${SBJ}_FA_FA_to_target_warp.nii.gz
#done

## APPLY NORMALIZATION WARP FOR RD
#TBSS=~/psych516/EDSD/tbss
#DTI=RD # Set to MD, RD, or AD
## FSLDIR is already set through environmental variables
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  applywarp \
#  -i ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_${DTI} \
#  -o ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_${DTI}_to_target \
#  -r ${FSLDIR}/data/standard/FMRIB58_FA_1mm \
#  -w ${TBSS}/FA/${SBJ}_FA_FA_to_target_warp.nii.gz
#done

### APPLY NORMALIZATION WARP FOR AD
#TBSS=~/psych516/EDSD/tbss
#DTI=AD # Set to MD, RD, or AD
## FSLDIR is already set through environmental variables
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  applywarp \
#  -i ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_${DTI} \
#  -o ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_${DTI}_to_target \
#  -r ${FSLDIR}/data/standard/FMRIB58_FA_1mm \
#  -w ${TBSS}/FA/${SBJ}_FA_FA_to_target_warp.nii.gz
#done

### APPLY TEMPLATE MASK FOR MD
#TBSS=~/psych516/EDSD/tbss
#DTI=MD # Set to MD, RD, or AD
#TMP=~/templates/ENIGMA
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  fslmaths \
#  ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_${DTI}_to_target \
#  -mas ${TMP}/ENIGMA_DTI_FA_mask.nii.gz \
#  ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_masked_${DTI}.nii.gz
#done

### APPLY TEMPLATE MASK FOR RD
#TBSS=~/psych516/EDSD/tbss
#DTI=RD # Set to MD, RD, or AD
#TMP=~/templates/ENIGMA
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  fslmaths \
#  ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_${DTI}_to_target \
#  -mas ${TMP}/ENIGMA_DTI_FA_mask.nii.gz \
#  ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_masked_${DTI}.nii.gz
#done

### APPLY TEMPLATE MASK FOR AD
#TBSS=~/psych516/EDSD/tbss
#DTI=AD # Set to MD, RD, or AD
#TMP=~/templates/ENIGMA
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  fslmaths \
#  ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_${DTI}_to_target \
#  -mas ${TMP}/ENIGMA_DTI_FA_mask.nii.gz \
#  ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_masked_${DTI}.nii.gz
#done

### SKELETONIZE FOR MD
#TBSS=~/psych516/EDSD/tbss
#DTI=MD # Set to MD, RD, or AD
#TMP=~/templates/ENIGMA
## FSLDIR is already set through environmental variables
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  tbss_skeleton \
#  -i ${TMP}/ENIGMA_DTI_FA.nii.gz \
#  -p 0.049 \
#  ${TMP}/ENIGMA_DTI_FA_skeleton_mask_dst.nii.gz \
#  ${FSLDIR}/data/standard/LowerCingulum_1mm.nii.gz \
#  ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_masked_${DTI}.nii.gz  \
#  ${TBSS}/${DTI}-individ/${SBJ}/stats/${SBJ}_masked_${DTI}skel \
#  -a ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_masked_${DTI}.nii.gz \
#  -s ${TMP}/ENIGMA_DTI_FA_skeleton_mask.nii.gz
#done

### SKELETONIZE FOR RD
#TBSS=~/psych516/EDSD/tbss
#DTI=RD # Set to MD, RD, or AD
#TMP=~/templates/ENIGMA
## FSLDIR is already set through environmental variables
#
#for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
#  tbss_skeleton \
#  -i ${TMP}/ENIGMA_DTI_FA.nii.gz \
#  -p 0.049 \
#  ${TMP}/ENIGMA_DTI_FA_skeleton_mask_dst.nii.gz \
#  ${FSLDIR}/data/standard/LowerCingulum_1mm.nii.gz \
#  ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_masked_${DTI}.nii.gz  \
#  ${TBSS}/${DTI}-individ/${SBJ}/stats/${SBJ}_masked_${DTI}skel \
#  -a ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_masked_${DTI}.nii.gz \
#  -s ${TMP}/ENIGMA_DTI_FA_skeleton_mask.nii.gz
#done

## SKELETONIZE FOR AD
TBSS=~/psych516/EDSD/tbss
DTI=AD # Set to MD, RD, or AD
TMP=~/templates/ENIGMA
# FSLDIR is already set through environmental variables

for SBJ in $(ls ${TBSS}/origdata/ | sed 's/_FA.nii.gz//g'); do
  tbss_skeleton \
  -i ${TMP}/ENIGMA_DTI_FA.nii.gz \
  -p 0.049 \
  ${TMP}/ENIGMA_DTI_FA_skeleton_mask_dst.nii.gz \
  ${FSLDIR}/data/standard/LowerCingulum_1mm.nii.gz \
  ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_masked_${DTI}.nii.gz  \
  ${TBSS}/${DTI}-individ/${SBJ}/stats/${SBJ}_masked_${DTI}skel \
  -a ${TBSS}/${DTI}-individ/${SBJ}/${DTI}/${SBJ}_masked_${DTI}.nii.gz \
  -s ${TMP}/ENIGMA_DTI_FA_skeleton_mask.nii.gz
done

#tree ~/psych516/EDSD/tbss > ~/Desktop/psych516/tbss.txt
