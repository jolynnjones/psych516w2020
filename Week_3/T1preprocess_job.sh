#!/bin/bash

#SBATCH --time=00:15:00  # walltime
#SBATCH --ntasks=1  # number of processor cores (i.e. tasks)
#SBATCH --nodes=1  # number of nodes
#SBATCH --mem-per-cpu=12G  # memory per CPU core

# LOAD ENVIRONMENTAL VARIABLES

# INSERT CODE, AND RUN YOUR PROGRAMS HERE
cd ~/psych516/EDSD/derivative/${1}/

# CROP
c3d \
${1}_T1w_RAS.nii \
-trim 20vox \
-o cropped.nii.gz

# N4 BIAS FIELD CORRECTION
N4BiasFieldCorrection \
-v -d 3 \
-i cropped.nii.gz \
-o n4.nii.gz \
-s 4 -b [200] -c [50x50x50x50,0.000001]

# RESAMPLE
c3d \
n4.nii.gz \
-resample-mm 1x1x1mm \
-o ${1}_T1w.nii.gz

# CLEAN UP DIRECTORY 
rm cropped.nii.gz
rm n4.nii.gz
