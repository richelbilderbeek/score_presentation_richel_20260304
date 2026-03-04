#!/bin/bash

for file in $(ls *.png)
do
  in_file_name=${file}
  base_file_name=${in_file_name%.*}
  out_file_name="${base_file_name}_with_border.png"
  echo "${in_file_name} -> ${out_file_name}"
  convert ${in_file_name} -bordercolor black -border 1x1 ${out_file_name}
done
