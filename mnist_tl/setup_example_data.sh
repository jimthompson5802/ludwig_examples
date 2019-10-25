#!/bin/bash

# create required directories
mkdir -p data/even/training
mkdir -p data/even/testing
mkdir -p data/odd/training
mkdir -p data/odd/testing

function copy_data(){
  dir=$1
  shift
  digits=("$@")
  for i in "${digits[@]}"
  do
    cp  ../mnist/data/training/${i}/*  ./data/training/${dir}/${i}
    cp  ../mnist/data/testing/${i}/*  ./data/testing/${dir}/${i}
  done
}

arr=(0 2 4 6 8)
copy_data even "${arr[@]}"

arr=(1 3 5 7 9)
copy_data odd "${arr[@]}"
