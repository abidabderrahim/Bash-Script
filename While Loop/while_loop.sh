#!/bin/bash

read -p "enter your name : " name
while [[ -z ${name}  ]]
do 
  echo "you must enter valid name ."
  read -p "enter your name : " name
done

echo "hello ${name}"
