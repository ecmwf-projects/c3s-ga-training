#!/usr/bin/env bash

envname=earthkit
conda create -n $envname -c conda-forge -y python=3.10
conda env update -n $envname -f environment.yml
conda activate $envname

. ./postBuild

mkdir test_data/

# set earthkit environment to the default used by ipykernels
python3 -m ipykernel install --user --name=$envname
