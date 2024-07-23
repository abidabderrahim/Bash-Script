#!/bin/bash

declare -A data
data['a']='1'
data['b']='2'

echo ${data[@]}
echo ${!data[@]}
echo ${data['a']}

for val in "${!data[@]}";do
  echo "$val : ${data[$val]}"
done
