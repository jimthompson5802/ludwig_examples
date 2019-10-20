#!/bin/bash

#
# create the MNIST training and test datasets
#

docker run \
  --rm \
  -v ${PWD}:/opt/project \
  ludwig_tf_cpu \
   python /opt/project/prepare_mnist_dataset.py