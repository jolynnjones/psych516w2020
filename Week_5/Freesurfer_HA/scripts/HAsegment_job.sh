#!/bin/bash

#SBATCH --time=03:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=16G  # memory per CPU core

# LOAD ENVIRONMENTAL VARIABLES
${freesurferdev}
export SUBJECTS_DIR=~/psych516/EDSD/my_dataset/FS_subjdir

# INSERT CODE, AND RUN YOUR PROGRAMS HERE
cd ${SUBJECTS_DIR}/${1}/

# HIPPOCAMPUS AMYGDALA SEGMENTATION
segmentHA_T1.sh \
${1} \
${SUBJECTS_DIR}/
