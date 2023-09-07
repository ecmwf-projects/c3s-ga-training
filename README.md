# Earthkit training for the C3S General Assembly

This repository contains Jupyter notebook training material to provide an introduction to **earthkit**.

## Installation and setup

To begin, you need to clone this GitHub respository. Start by openening a terminal
and navigating to somewhere you are happy to install these training materials. Then,
click the green **Code** button at the top of this page and copy the link that appears.
Finally, run the `git clone` command to clone the repository:

```
cd ${HOME}

# Clone over HTTPS (recommended)
git clone https://github.com/ecmwf-projects/c3s-ga-training.git

# Alternatively, clone over SSH - uncomment the below command
# git clone git@github.com:ecmwf-projects/c3s-ga-training.git
```

Once you have cloned the repository, it's time to install **earthkit**!

If you don't care about the details of setup, you can install all of the earthkit
components we will be using in these examples by running a single script - 
just execute the following and skip to section **Launching Jupyter** (note that
you will need conda installed, which is covered in more detail below).

```
cd c3s-ga-training
. ./earthkit-setup.sh
```

### conda environment setup

The following setup assumes that you have conda installed,
`conda` installation is platform specific, so if you need to install
please visit https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html
and install using the appropriate scripts.

`conda` is already installed on WEkEO (and some other cloud platforms)

To ensure we do not conflict with any environments you are already using we are going to use a conda environment specifically for this training. Although not essential, using dedicated environments for tasks is considered best practice as it improves stability and makes it much easier to debug any issues.

The following command will create a clean environment with no python packages installed, it only need to be run the first time you use this environment. 

```
conda create -n earthkit -c conda-forge python=3.10 
```

The following command will activate you environment, when you return to work with earthkit you only need to execute this command.

```
conda activate earthkit
```

### Install Earthkit packages
```
conda install -y -c conda-forge earthkit-data 

pip install -q earthkit-maps

# Replace with PyPi when released
pip install -q earthkit-climate@git+https://github.com/ecmwf/earthkit-climate
```

### Install additional dependancies
Earthkit does not take responsibility for some of the dependancy packages as they are quite heavy
installations. Earthkit can be installed and run many methods without these dependancies, but for a full
featured experience you should install the following pacakges. `conda` is advised for these as they come
with additional binaries which `pip` may not install.

```
conda install -y -c conda-forge cf-units cartopy geopandas
```

### Install jupyter to run the notebooks
```
conda install -y -c conda-forge jupyter
```

## Launching Jupyter

For the hands-on training sessions, we will be using the browser-based Jupyter
notebook interface. If you would like to follow along in the same interface,
simply run the below script:

```
. ./launch-earthkit-to-jupyter
```