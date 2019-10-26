#!/bin/bash

# clean-out directory with prior results

for f in $(ls data)
do
  ext=${f##*.}
  if [[  ${ext} = json || ${ext} == hdf5 ]]; then
    echo removing data/${f}
    rm data/${f}
  fi
done

if [[ -d results ]]; then
  echo removing results directory
  rm -fr results
fi

if [[ -d saved_model ]]; then
  echo removing saved_model directory
  rm -fr saved_model
fi

if [[ -d viz ]]; then
  echo removing viz directory
  rm -fr viz
  mkdir viz
fi