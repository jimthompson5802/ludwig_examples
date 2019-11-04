#!/bin/bash

image_suffix=${1:-tf_cpu}

echo "transfer learning with even digits"

../bin/run_batch_cli ${image_suffix} \
   ludwig train \
    --experiment_name mnist_even_digits \
    --random_seed 1313 \
     --model_definition_file model_definition.yaml \
     --model_load_path results/mnist_odd_digits_run/model  \
     --data_csv /opt/project/data/even/mnist_dataset_training.csv


