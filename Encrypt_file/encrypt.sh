#!/bin/bash

read -p "Enter the Exact File Name with extension : " file

gpg -c "$file"
echo "file encrypted sucessfully..."
echo "start removing the original file ."
rm -rf "$file"
