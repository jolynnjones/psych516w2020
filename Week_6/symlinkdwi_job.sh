#!/bin/bash

#SBATCH --time=00:01:00 # walltime
#SBATCH --ntasks=1 # number of processor cores
#SBATCH --nodes=1 # number of nodes
#SBATCH --mem-per-cpu=12G # memory per CPU core

#mkdir -p ~/psych516/EDSD/pDWI/${1}/dwi/
#ln -s ~/psych516/EDSD/my_dataset/${1}/dwi/${1}_dwi.bval ~/psych516/EDSD/pDWI/${1}/dwi/${1}_dwi.bval
#ln -s ~/psych516/EDSD/my_dataset/${1}/dwi/${1}_dwi.bvec ~/psych516/EDSD/pDWI/${1}/dwi/${1}_dwi.bvec
#ln -s ~/psych516/EDSD/my_dataset/${1}/dwi/${1}_dwi.nii.gz ~/psych516/EDSD/pDWI/${1}/dwi/${1}_dwi.nii.gz

#Extract BO image
workdir=~/psych516/EDSD/pDWI/${1}/dwi
fslroi ${workdir}/${1}_dwi.nii.gz ${workdir}/${1}_dwi_b0.nii.gz 0 1
