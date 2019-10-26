#!/bin/bash

image_suffix=${1:-tf_cpu}

../bin/run_batch_cli ${image_suffix} python model_predictions.py

