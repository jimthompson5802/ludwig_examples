#!/bin/bash
set -xe

#
# Script to generate visualization
#

image_suffix=${1:-tf_cpu}

docker run \
  --rm \
  -v ${PWD}:/opt/project \
  ludwig_${image_suffix} \
   ludwig visualize \
     --file_format png --output_directory ./viz \
     -v learning_curves \
     -trs ./results/experiment_run/training_statistics.json
