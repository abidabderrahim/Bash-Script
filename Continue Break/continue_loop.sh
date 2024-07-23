#!/bin/bash

for i in 1 2 3 4 5
do
  if [[ $i -eq 2 ]]
  then
    echo "will skip the number 2 ."
    continue
  fi
  echo "i is $i"
done
