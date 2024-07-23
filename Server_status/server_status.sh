#!/bin/bash

server_name=$(hostname)

echo "the server name is ${server_name}"

function memory_check(){
  echo ""
  echo "the current memory usage on ${server_name} is : "
  free -h
  echo ""
}

function cpu_check(){
  echo ""
  echo "CPU load on ${server_name} : "
  echo ""
  uptime
  echo ""
}
function tcp_check(){
  echo ""
  echo "TCP connection on ${server_name} is : "
  echo ""
  cat /proc/net/tcp | wc -l
  echo ""
}
function kernel_check(){
  echo ""
  echo "kernel version on ${server_name} is : "
  echo ""
  uname -r
  echo ""
}

function all_checks()
{
  echo ""
  echo "the current memory usage on ${server_name} is : "
  echo ""
  free -h
  echo ""
  echo "CPU load on ${server_name} : "
  echo ""
  uptime
  echo ""
  echo "TCP connection os ${server_name} is : "
  echo ""
  cat /proc/net/tcp | wc -l
  echo ""
  echo "kernel version on ${server_name} is : "
  echo ""
  uname -r
  echo ""
}

green='\e[32m'
blue='\e[34m'
clear='\e[0m'
##
# Color Functions
##
ColorGreen(){
echo -ne $green$1$clear
}
ColorBlue(){
echo -ne $blue$1$clear
}

function menu(){
echo -ne "
##### Menu #####
$(ColorGreen '1)') Memory usage
$(ColorGreen '2)') CPU load
$(ColorGreen '3)') Number of TCP connections
$(ColorGreen '4)') Kernel version
$(ColorGreen '5)') Check All
$(ColorGreen '0)') Exit
$(ColorBlue 'Choose an option:')"
read option
case $option in
  1) memory_check ; menu 
  ;;
  2) cpu_check ; menu 
  ;;
  3) tcp_check ; menu 
  ;;
  4) kernel_check ; menu 
  ;;
  5) all_checks ; menu 
  ;;
  0) exit 0 
  ;;
  *) echo -e $red"Wrong option."$clear;
  WrongCommand;;
esac
}
menu

