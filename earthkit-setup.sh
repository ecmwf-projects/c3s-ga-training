envname=earthkit
conda activate $envname 2>/dev/null || conda create -n $envname -c conda-forge python=3.10 -y && conda activate $envname;

# Install EK packages
conda install -y -c conda-forge earthkit-data  
pip install -q earthkit-maps
# Replace with PyPi when released
pip install -q earthkit-climate@git+https://github.com/ecmwf/earthkit-climate

# Addittional dependancies:
conda install -c conda-forge -y cf-units cartopy 
