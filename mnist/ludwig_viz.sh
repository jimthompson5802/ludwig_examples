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
     -v learning_curves -v confusion_matrix \
     -trs ./results/experiment_run_0/training_statistics.json  \
     -tes ./results/experiment_run_0/test_statistics.json \
     -gm ./results/experiment_run_0/model/train_set_metadata.json
