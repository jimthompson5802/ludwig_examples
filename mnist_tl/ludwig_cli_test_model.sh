#!/bin/bash

image_suffix=${1:-tf_cpu}
model_digit=${2:-odd}

../bin/run_batch_cli ${image_suffix} \
   ludwig test \
     --model_path results/mnist_${model_digit}_digits_run/model \
     --output_directory results_test_odd_model_odd_data \
     --split full \
     --logging_level error \
     --data_csv data/odd/mnist_dataset_testing.csv 2>/dev/null

echo -e "\nAccuracy for ${model_digit} model on odd digits: " \
  "$(jq .combined.accuracy results_test_odd_model_odd_data/test_statistics.json)\n"


../bin/run_batch_cli ${image_suffix} \
   ludwig test \
     --model_path results/mnist_${model_digit}_digits_run/model \
     --output_directory results_test_odd_model_even_data \
     --split full \
     --logging_level error \
     --data_csv data/even/mnist_dataset_testing.csv 2>/dev/null

echo -e "\nAccuracy for ${model_digit} model on even digits: " \
  "$(jq .combined.accuracy results_test_odd_model_even_data/test_statistics.json)\n"