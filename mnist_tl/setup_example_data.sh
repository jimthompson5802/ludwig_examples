#!/bin/bash

# clean out old data
rm -fr data
rm -fr results

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
    echo copying to ${dir}/training/${i}
    cp -R ../mnist/data/training/${i}  ./data/${dir}/training/

    echo copying to ${dir}/testing/${i}
    cp -R ../mnist/data/testing/${i}  ./data/${dir}/testing/
  done
}

arr=(0 2 4 6 8)
copy_data even "${arr[@]}"

arr=(1 3 5 7 9)
copy_data odd "${arr[@]}"
