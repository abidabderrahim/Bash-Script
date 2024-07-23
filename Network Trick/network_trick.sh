#!/bin/bash

GREEN='\033[1;32m'
RED='\033[1;31m'
WHITE='\033[1;37m'

read -p "Enter Status Network (1/0) : " status

if [[ status -eq 1 ]]
then
   echo -en "${GREEN}"
   echo "            )))  ●  (((  "
else
   echo -en "${RED}"
   echo "                 ●  "
fi

echo -en "${WHITE}"
echo "                ---      "
echo "               /   \     "
echo "              |  *  |    "
echo "              |  *  |    "
echo "              |  *  |    "
echo "              |  *  |    "
echo "            _/_______\_  "
echo "           |___________| "
