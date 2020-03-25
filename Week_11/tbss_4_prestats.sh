#!/bin/bash

#SBATCH --time=00:30:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=12G  # memory per CPU core

#FSL ENVIRONMENT VARIABLES
FSLDIR=/fslhome/oct0695/research_bin/FSL
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH
. ${FSLDIR}/etc/fslconf/fsl.sh

#TBSS PART 
##Project all subjects' FA data onto the mean FA skeleton
cd ~/psych516/EDSD/tbss
tbss_4_prestats -0.049
