#!/bin/bash

read -p "Please Enter Length Of The Password: " password_len

echo "Select One Of The 10 Generated Passwords: "
for passowrd in $(seq 1 10);
do
	openssl rand -base64 48 | cut -c1-$password_len
done
