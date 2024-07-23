#!/bin/bash

# Define colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
RED='\033[0;31m'
WHITE='\033[0;37m'
NC='\033[0m'  # No Color

clear  # Clear the terminal for a neat start

echo -e "${RED}Initializing Malware...${NC}"
sleep 0.3
echo -e "${BLUE}Accessing Targte Data...${NC}"
sleep 0.3
echo -e "${WHITE}Bypassing firewall...${NC}"
sleep 0.3
echo -e "${GREEN}Firewall bypassed successfully!${NC}"
sleep 0.3

draw_progress_bar() {
    local progress total_width bar_length
    progress=$1
    total_width=$(tput cols)

    let bar_length=($total_width-10)*$progress/100

    printf "\r${WHITE}["
    printf "%0.s=" $(seq 1 $bar_length)
    printf "%0.s " $(seq 1 $(($total_width-$bar_length-10)))
    printf "] %3d%%${NC}" $progress
}

for i in $(seq 1 100); do
    draw_progress_bar $i
    sleep 0.05
done

echo ""
echo -e "${GREEN}Target Hcaked Successfuly...${NC}"
