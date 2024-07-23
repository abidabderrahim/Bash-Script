#!/bin/bash

check_root() {
# Using id -u to fetch user ID. Root user ID is always 0
# and user can be 1000 or 1001 ... .
    if [ "$(id -u)" -ne 0 ]; then
      echo "Error: root not found ."
      echo "Error: This script must be run as root."
      echo "Error: You may try using: sudo $0"
      return 1
    else
        echo "Status: Script is running with root privileges ."
        return 0
    fi
}
main() {
    check_root
    exit $?
}

main
