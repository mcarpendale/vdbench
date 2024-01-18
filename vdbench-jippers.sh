#!/bin/bash
# i use this with azure cli 
# adding --custom-data vdbench-jippers.sh to az vm create \
apt-get -y update
apt-get -y install default-jdk
apt-get -y install unzip
mkdir /home/vmuser/vdbench
cd /home/vmuser
curl -O https://raw.githubusercontent.com/mcarpendale/vdbench/main/post-deploy-create-disk-partition.sh
chmod +x post-deploy-create-disk-partition.sh
./post-deploy-create-disk-partition.sh
cd /home/vmuser/vdbench
#curl -O https://raw.githubusercontent.com/mcarpendale/vdbench/main/run_32K_70R.vdb
curl -O https://raw.githubusercontent.com/mcarpendale/vdbench/main/run_32K_70R_lin.vdb
curl -O https://raw.githubusercontent.com/mcarpendale/vdbench/main/vdbench50407.zip
unzip vdbench50407.zip
