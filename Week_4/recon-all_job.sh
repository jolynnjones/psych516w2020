#!/bin/bash

#SBATCH --time=25:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=16G  # memory per CPU core

# LOAD ENVIRONMENTAL VARIABLES
freesurfer

# INSERT CODE, AND RUN YOUR PROGRAMS HERE
cd ~/psych516/EDSD/derivative/${1}/

# RECON-ALL
recon-all \
-subjid ${1} \
-i ${1}_T1w.nii.gz \
-wsatlas \
-all \
-sd ~/psych516/EDSD/my_dataset/FS_subjdir/  

