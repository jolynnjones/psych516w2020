#!/bin/bash

#SBATCH --time=30:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=12G  # memory per CPU core

#FSL ENVIRONMENT VARIABLES
FSLDIR=/fslhome/oct0695/research_bin/FSL
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH
. ${FSLDIR}/etc/fslconf/fsl.sh

#TBSS PART 2 
###Nonlinear register all FA images to a 1x1x1mm standard space
cd ~/psych516/EDSD/tbss
tbss_2_reg -t ~/templates/ENIGMA/ENIGMA_DTI_FA.nii.gz
