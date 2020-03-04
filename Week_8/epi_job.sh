#!/bin/bash

#SBATCH --time=08:00:00 # walltime
#SBATCH --ntasks=1 # number of processor cores
#SBATCH --nodes=1 # number of nodes 
#SBATCH --mem-per-cpu=16G # memory per CPU core

#INSERT CODE, AND RUN YOUR PROGRAMS HERE
cd ~/psych516/EDSD/pDWI/${1}/dwi/

#LOAD ENVIRONMENTAL VARIABLES
freesurfer

#EPI DISTORTION CORRECTION
workdir=~/psych516/EDSD/pDWI/${1}/dwi
fslroi ${workdir}/${1}_dwi_eddy.nii.gz ${workdir}/${1}_dwi_eddy_b0.nii.gz 0 1
bet ${1}_dwi_eddy_b0.nii.gz tmp -f 0.4 -g 0 -m
bet tmp.nii.gz ${1}_dwi_eddy_b0 -f 0.4 -g 0 -m
rm tmp*

#SKULL-STRIPPED T1 IMAGE
work_dir=~/psych516/EDSD/my_dataset/FS_subjdir/${1}/mri
out_dir=~/psych516/EDSD/pDWI/${1}/dwi
mri_convert ${work_dir}/brainmask.mgz ${out_dir}/${1}_t1.nii.gz

#RIGID ALIGNMENT TO REMOVE MOVEMENT
antsRegistrationSyNQuick.sh \
-d 3 \
-f ${1}_dwi_eddy_b0.nii.gz \
-m ${1}_t1.nii.gz \
-o ${1}_T1toEddyB0_ \
-t a

#DIFFEOMORPHIC ALIGNMENT TO FIX DISTORTIONS
antsRegistrationSyN.sh \
-d 3 \
-f ${1}_T1toEddyB0_Warped.nii.gz \
-m ${1}_dwi_eddy_b0.nii.gz \
-o ${1}_dwi_epi_ \
-t so

#TRANSFORM - APPLY 3D REGISTRATION TO 4D IMAGE
antsApplyTransforms \
--dimensionality 3 \
--input-image-type 3 \
--input ${1}_dwi_eddy.nii.gz \
--output ${1}_dwi_epi.nii.gz \
--reference-image ${1}_T1toEddyB0_Warped.nii.gz \
--interpolation Bspline \
--transform ${1}_dwi_epi_1Warp.nii.gz


