#!/bin/bash


docker run \
  -v ${PWD}:/opt/project \
  ludwig_tf_mkl \
   ludwig experiment \
  --data_train_csv /opt/project/data/mnist_dataset_training.csv \
  --data_test_csv /opt/project/data/mnist_dataset_testing.csv \
  --model_definition_file /opt/project/model_definition.yaml
