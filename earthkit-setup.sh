#!/usr/bin/env bash

envname=earthkit
conda activate $envname 2>/dev/null || conda create -n $envname -c conda-forge python=3.10 -y && conda activate $envname;

pip install earthkit@git+https://github.com/ecmwf/earthkit@feature/import-resilience

# Install EK packages
# pip install earthkit-data@git+https://github.com/ecmwf/earthkit-data@develop --upgrade
pip install ecmwflibs
pip install earthkit-data --upgrade
# conda install -y -c conda-forge earthkit-data 
pip install earthkit-maps --upgrade
# Replace with PyPi when released
pip install earthkit-climate --upgrade

# Additional dependancies:
conda install -c conda-forge -y cf-units cartopy rasterio

# Install jupyter
conda install -y -c conda-forge jupyter
pip install ipykernel
python -m ipykernel install --user --name=earthkit