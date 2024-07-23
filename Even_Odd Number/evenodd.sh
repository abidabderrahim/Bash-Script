#!/bin/bash
read -p "Enter The Number: " n

if [ $((n % 2)) -eq 0 ]; then
	echo "is a Even Number"
else
	echo "is a Odd Number"
fi
