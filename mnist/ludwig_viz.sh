#!/bin/bash

image_suffix=${1:-tf_cpu}

# confusion matrix
../bin/run_batch_cli ${image_suffix} \
   ludwig visualize \
     --file_format png --output_directory ./viz \
     -v confusion_matrix \
     -tes ./results/mnist_cli_experiment_run/test_statistics.json \
     -gm ./results/mnist_cli_experiment_run/model/train_set_metadata.json

# learning curves
../bin/run_batch_cli ${image_suffix} \
   ludwig visualize \
     --file_format png --output_directory ./viz \
     -v learning_curves \
     -trs ./results/mnist_cli_experiment_run/training_statistics.json

# model performance
../bin/run_batch_cli ${image_suffix} \
   ludwig visualize \
     --file_format png --output_directory ./viz \
     -v compare_performance \
     -tes ./results/mnist_cli_experiment_run/test_statistics.json

