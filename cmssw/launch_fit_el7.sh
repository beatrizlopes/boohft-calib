#!/bin/bash
WORKDIR=$PWD

source /cvmfs/cms.cern.ch/cmsset_default.sh
export RELEASE=CMSSW_10_2_27
if [ -r $RELEASE/src ] ; then
  echo found $RELEASE
else
  echo please setup $RELEASE env first
  exit 1
fi
cd $RELEASE/src
eval `scram runtime -sh`

# launch the fit
cd $WORKDIR
python $WORKDIR/cmssw/fit.py $@ --bound 0.1,20 --bound-main-poi 0.5,2.0