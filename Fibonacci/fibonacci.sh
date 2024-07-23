#!/bin/bash

read -p "Enter Number : " n
x=0 
y=1
z=0
while [[ n -ne 1 ]]; do
	z=$((x + y))
	x=$y
	y=$z
    ((n--))
done

echo "fibonacci number is $z"
