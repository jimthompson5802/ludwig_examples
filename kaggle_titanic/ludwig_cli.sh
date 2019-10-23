#!/bin/bash
set -xe

#
# Script to run a Ludwig experiment via command line
#

image_suffix=${1:-tf_cpu}

docker run \
  --rm \
  -v ${PWD}:/opt/project \
  ludwig_${image_suffix} \
   ludwig experiment \
    --data_csv ./data/train.csv \
    --model_definition_file model_definition.yaml
