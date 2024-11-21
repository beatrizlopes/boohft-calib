#!/bin/bash

WORKDIR=$PWD

# trick for SWAN: unset previous python env
#unset PYTHONPATH
#unset PYTHONHOME
# load CMSSW environment
cmssw-el7 -- sh cmssw/launch_fit_el7.sh $@
