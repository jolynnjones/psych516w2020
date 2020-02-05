#!/bin/bash

subjdir=~/psych516/EDSD/my_dataset/FS_subjdir
bigv_subjdir=~/psych516/EDSD/my_dataset/FS_bigv_subjdir

for i in `cat ~/psych516/EDSD/participants.txt`; do

# CONVERT ASEG TO NIFTI
mri_convert \
${subjdir}/${i}/${i}/mri/aseg.mgz \
${subjdir}/${i}/${i}/mri/aseg.nii.gz

mri_convert \
${bigv_subjdir}/${i}/${i}/mri/aseg.mgz \
${bigv_subjdir}/${i}/${i}/mri/aseg.nii.gz

# EXTRACT LATERAL VENTRICLE BINARY ROI
c3d \
${subjdir}/${i}/${i}/mri/aseg.nii.gz -thresh 4 4 1 0 \
${subjdir}/${i}/${i}/mri/aseg.nii.gz -thresh 43 43 1 0 \
-add \
-o ${subjdir}/${i}/${i}/mri/lateralventricles.nii.gz

c3d \
${bigv_subjdir}/${i}/${i}/mri/aseg.nii.gz -thresh 4 4 2 0 \
${bigv_subjdir}/${i}/${i}/mri/aseg.nii.gz -thresh 43 43 2 0 \
-add \
-o ${bigv_subjdir}/${i}/${i}/mri/lateralventricles.nii.gz

# VIEW JUST THE LATERAL VENTRICLES
freeview \
-v ${subjdir}/${i}/${i}/mri/T1.mgz \
${subjdir}/${i}/${i}/mri/lateralventricles.nii.gz:colormap=jet:opacity=0.5:colorscale=0,2 \
${bigv_subjdir}/${i}/${i}/mri/lateralventricles.nii.gz:colormap=jet:opacity=0.5:colorscale=0,2 \
--viewport sagittal \
--layout 1 \
--viewsize 800 800 \
--zoom 1 \
--screenshot ~/Desktop/${i}_latvent.png
done
