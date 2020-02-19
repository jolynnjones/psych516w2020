#!/bin/bash

for i in `cat ~/psych516/EDSD/participants.tsv`; do

mkdir -p ~/psych516/EDSD/my_dataset/$i/{anat,func,dwi}/

done

 

