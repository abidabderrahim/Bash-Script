#!/bin/bash

admin="root"
read -p "Enter your username? " username

if [[ "${username}" != "${admin}" ]] || [[ $EUID != 0 ]] ;
then
  echo "You are not the admin or root user, but please be safe!"
else
  echo "You are the admin user! This could be very destructive!"
fi
