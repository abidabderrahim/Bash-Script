#!/bin/bash

array=("1" "2" "3" "4" "5")
echo "value one is ${array[0]}"
echo "last value is ${array[-1]}"
echo "array values : ${array[@]}"
echo "the array len is ${#array[@]}"

for i in "${array[@]}"; do
  echo "$i "
done
