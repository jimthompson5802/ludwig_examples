#!/bin/bash

image_suffix=${1:-tf_cpu}

../bin/run_batch_cli ${image_suffix} \
   ludwig train \
    --experiment_name mnist_tl_cli_experiment \
    --random_seed 1313 \
     --model_definition_file /opt/project/model_definition.yaml \
     --data_csv /opt/project/data/odd/mnist_dataset_training.csv


