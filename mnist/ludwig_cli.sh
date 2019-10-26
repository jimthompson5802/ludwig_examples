#!/bin/bash

image_suffix=${1:-tf_cpu}

../bin/run_batch_cli ${image_suffix} \
   ludwig experiment \
    --experiment_name mnist_cli_experiment \
     --model_definition_file /opt/project/model_definition.yaml \
     --data_csv /opt/project/data/mnist_dataset_training.csv

