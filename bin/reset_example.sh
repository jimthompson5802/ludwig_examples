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

list_of_dirs=(results results_api saved_model viz viz_api)
for d in "${list_of_dirs[@]}"
do
  echo rermoving ${d}
  rm -fr ${d}
done
