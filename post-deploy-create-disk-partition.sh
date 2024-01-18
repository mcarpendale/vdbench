#!/bin/bash

# Define color codes
RED="\e[31m"
BLUE="\e[34m"
WHITE="\e[97m"
RESET="\e[0m"
ARROW="${BLUE}==>${RESET}${WHITE}"
REDARROW="${RED}==>${RESET}${WHITE}"
BUILD="🛠️"

# Find a 32GB disk with no partitions
disk=$(lsblk -b -d -n -o NAME,SIZE,TYPE | awk '$2 == 34359738368 && $3 == "disk" {print $1}')

# Check if a disk was found and it is unpartitioned
if [ -z "$disk" ]; then
    echo -e "${ARROW} ${RED}No 32GB unpartitioned disk found ${RESET}" 
    exit 1
else
    echo -e "${ARROW} Found 32GB unpartitioned disk: ${RED}/dev/$disk ${RESET}" 
fi

# Create a partition on the found disk
if echo -e "n\np\n1\n\n\nw" | sudo fdisk /dev/$disk; then
    echo -e "${ARROW} Partition created on ${RED}/dev/$disk ${RESET}"
else
    echo -e "${REDARROW} Failed to create partition on ${RED}/dev/$disk ${RESET}"
fi
