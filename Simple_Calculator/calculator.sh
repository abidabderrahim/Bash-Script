#!/bin/bash

read -p "Enter Number One : " one
read -p "Enter  + , - , * , / : " op
read -p "Enter Number Two : " two

case $op in
  +) res=`echo $one + $two | bc`
  ;;
  -) res=`echo $one - $two | bc`
  ;;
  *) res=`echo $one \* $two | bc`
  ;;
  /) res=`echo "scal=2; $one / $two" | bc `
  ;;
esac

green='\e[42m'
clear='\e[1'
Colorgreen(){
echo -ne $green$1$clear
}
echo "$one $op $two = $(Colorgreen $res)"
echo ""
