#!/bin/bash

#SBATCH --time=00:05:00 # walltime
#SBATCH --ntasks=1 # number of processor cores
#SBATCH --nodes=1 # number of nodes
#SBATCH --mem-per-cpu=12G # memory per CPU core

cd ~/psych516/EDSD/pDWI/${1}/dwi/

#GENERATE EPI MASK
workdir=~/psych516/EDSD/pDWI/${1}/dwi
fslroi ${workdir}/${1}_dwi_epi.nii.gz ${workdir}/${1}_dwi_epi_b0.nii.gz 0 1
bet ${1}_dwi_epi_b0.nii.gz dwi_epi_b0 -f 0.25 -g 0 -m
bet dwi_epi_b0.nii.gz ${1}_dwi_epi_b0 -f 0.25 -g 0 -m

CALCULATING TENSORS
dtifit \
--data=${1}_dwi_epi.nii.gz \
--out=dti \
--mask=${1}_dwi_epi_b0_mask.nii.gz \
--bvecs=${1}_dwi_eddy.eddy_rotated_bvecs \
--bvals=${1}_dwi.bval \
--save_tensor
