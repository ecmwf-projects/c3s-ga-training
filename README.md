# Earthkit training for the C3S General Assembly

This repository contains Jupyter notebook training material to provide an introduction to **earthkit**.

We recommend using [WEkEO](https://www.wekeo.eu) for this training as you can benefit from the fast internet connection between the CDS and and WEkEO. However, the installation instructions are applicable to both your local Linux/Mac computer and most remote JupyterHub environments (e.g. WEkEO).


## Installation and setup

**These instructions are applicable to local and remote environments**

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

We have included a script in the git repo which creates a conda environment
with the earthkit packages that will be used in this training material.
To get started go into the repo directory and execute the `earthkit-setup.sh`
as source\* and then activate the environment. 

```
cd c3s-ga-training
. ./earthkit-setup.sh
conda activate earthkit
```

\*To execute a script as source means to run the script in you current envrionment. This is done by including a `. ` at the start of the command. This is important as without running as source, `conda` does not have the information it requires to modify the environments correctly.

### Launching Jupyter

If you are using a remote JupyterHub environment (e.g. WEkEO) you can now simply open one of the
Notebooks which should be available via the sidebar.
If you are working locally you can launch jupyter with the command below then choose one the notebooks open.

```
jupyter notebook notebooks/
```

When the notebook is open you can set the earthkit environment kernel from the list of kernels in the top right:

![EnvChange](img/change-environment.gif)


### Binder

It is also possible to run these notebooks on Binder which create the environment with all the dependancies installed and you do not need to wrorry about Kernels. However, you will not benefit from the fast connection that we have between WEkEO and the CDS for the data downloads.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/ecmwf-projects/c3s-ga-training/HEAD)


### CDS API key

**NOTE: If you are working in WEkEO, you can ignore this section.**

In order to retrieve data from the CDS using earthkit, you will need a CDS account
and a `.cdsapirc` file. Head to the [CDS website](https://cds.climate.copernicus.eu),
make sure you're logged in, and then visit the
[CDS API guide](https://cds.climate.copernicus.eu/api-how-to) for instructions on
how to get your `.cdsapirc` file set up.

*If working on binder you will find that you cannot create a file called `.cdsapirc`, a work-around is to add the credential to a file called `cdsapirc` then rename it from a terminal*:

```
mv ~/cdsapirc ~/.cdsapirc
```

## Manual install

Below are the steps to install the earthkit packages, these may be useful if you want to start using earthkit in your existing projects. However, this is not recommended for the training event as we will not have time to debug any installation issues you have.

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
