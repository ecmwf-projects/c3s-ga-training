#!/usr/bin/env bash

envname=earthkit

jupyter kernelspec uninstall $envname

conda env update -n $envname -f environment.yml
conda activate $envname

. ./postBuild

# set earthkit environment to the default used by ipykernels
python3 -m ipykernel install --user --name=$envname
