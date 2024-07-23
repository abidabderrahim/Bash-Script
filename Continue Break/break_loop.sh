#!/bin/bash

num=1
while [[ $num -lt 10 ]]
do
  if [[ $num -eq 5 ]]
  then
    break
  fi
  echo "num is ${num}"
  ((num++))
done

echo "loop is completed ."
