envname=earthkit
conda activate $envname 2>/dev/null || conda create -n $envname -c conda-forge python=3.10 -y && conda activate $envname;

# Install EK packages
# pip install earthkit-data@git+https://github.com/ecmwf/earthkit-data@develop --upgrade
pip install earthkit-data --upgrade
# conda install -y -c conda-forge earthkit-data  
pip install earthkit-maps@git+https://github.com/ecmwf/earthkit-maps@develop --upgrade
# Replace with PyPi when released
pip install earthkit-climate@git+https://github.com/ecmwf/earthkit-climate@groupby_time-fix --upgrade

# Additional dependancies:
conda install -c conda-forge -y cf-units cartopy rasterio

# Install jupyter
conda install -y -c conda-forge jupyter
