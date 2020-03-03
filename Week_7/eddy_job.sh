#!/bin/bash

#SBATCH --time=08:00:00 # walltime
#SBATCH --ntasks=1 # number of processor cores
#SBATCH --nodes=1 # number of nodes 
#SBATCH --mem-per-cpu=16G # memory per CPU core

#INSERT CODE, AND RUN YOUR PROGRAMS HERE
cd ~/psych516/EDSD/pDWI/${1}/dwi/

#CREATE ACQPARAMS
# -use 1/bandwidthperpixelphaseencode and phaseencodingdirection from json file
#printf "0 -1 0 0.072" > acqparams.txt


#CREATE INDEX FILE
# tells eddy which line of acqparams to use for each volume
#myVar=($(wc -w ${1}_dwi.bval))
#indx=""
#for ((i=1; i<=$myVar; i+=1)); do indx="$indx 1"; done
#echo $indx > index.txt

#EDDY CORRECT
eddy_openmp \
--imain=${1}_dwi.nii.gz \
--acqp=acqparams.txt \
--index=index.txt \
--mask=${1}_dwi_b0__mask.nii.gz \
--bvecs=${1}_dwi.bvec \
--bvals=${1}_dwi.bval \
--out=${1}_dwi_eddy \
--verbose

