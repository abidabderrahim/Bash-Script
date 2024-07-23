#!/bin/bash
read -p "Enter The Number: " a

fact=1
while [ "$a" -ne 0 ]; do
	fact=$((fact * a))
	a=$((a - 1))
done
echo "factorial of $a is $fact"
