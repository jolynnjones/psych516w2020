#!/bin/bash

#SBATCH --time=00:30:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=12G  # memory per CPU core

#mkdir ~/psych516/EDSD/tbss
#for i in `cat ~/psych516/EDSD/participants.txt`; do
#cp ~/psych516/EDSD/pDWI/${i}/dwi/dti_FA.nii.gz ~/psych516/EDSD/tbss/
#cd ~/psych516/EDSD/tbss
#mv dti_FA.nii.gz ${i}_FA.nii.gz
#done

#FSL ENVIRONMENT VARIABLES
FSLDIR=/fslhome/oct0695/research_bin/FSL
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH
. ${FSLDIR}/etc/fslconf/fsl.sh

#TBSS PART 1
## will erode FA images slightly and
### zero the end slices to remove likely outliers
#### from the diffusion tensor fitting

cd ~/psych516/EDSD/tbss
tbss_1_preproc *.nii.gz
