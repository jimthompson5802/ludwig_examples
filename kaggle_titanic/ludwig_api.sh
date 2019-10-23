#!/bin/bash
set -xe

#
# Script to run Python program using the Ludwig api
#

image_suffix=${1:-tf_cpu}

docker run \
  --rm \
  -v ${PWD}:/opt/project \
  ludwig_${image_suffix} \
   python model_experiment.py

