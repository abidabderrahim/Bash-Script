#!/bin/bash

for c in 90 30 31 91 32 33 34 35 36 37 95 36 97; do
	echo -en "\r \e[${c}m Hello World! \e[0m "
	sleep 1
done
