#!/bin/bash

image_suffix=${1:-tf_cpu}

../bin/run_batch_cli ${image_suffix} \
   ludwig test \
     --model_path results/mnist_tl_cli_experiment_run/model \
     --output_directory results_test_odd_model_odds_data \
     --split full \
     --data_csv data/odd/mnist_dataset_testing.csv


../bin/run_batch_cli ${image_suffix} \
   ludwig test \
     --model_path results/mnist_tl_cli_experiment_run/model \
     --output_directory results_test_odd_model_even_data \
     --split full \
     --data_csv data/even/mnist_dataset_testing.csv

