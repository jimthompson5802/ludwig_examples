#!/bin/bash
set -xe

image_suffix=${1:-tf_cpu}

docker run \
  --rm \
  -v ${PWD}:/opt/project \
  ludwig_${image_suffix} \
   ludwig experiment \
  --data_train_csv /opt/project/data/mnist_dataset_training.csv \
  --data_test_csv /opt/project/data/mnist_dataset_testing.csv \
  --model_definition_file /opt/project/model_definition.yaml
