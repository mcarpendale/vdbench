#!/bin/bash
sudo apt-get -y update
sudo apt-get -y install default-jdk
sudo apt-get -y install unzip

curl -O https://raw.githubusercontent.com/mcarpendale/vdbench/main/vdbench-jippers.sh
chmod +x vdbench-jippers.sh
curl -O https://raw.githubusercontent.com/mcarpendale/vdbench/main/post-deploy-create-disk-partition.sh
chmod +x post-deploy-create-disk-partition.sh
mkdir vdbench
cd vdbench
#curl -O https://raw.githubusercontent.com/mcarpendale/vdbench/main/run_32K_70R.vdb
curl -O https://raw.githubusercontent.com/mcarpendale/vdbench/main/run_32K_70R_lin.vdb
curl -O https://raw.githubusercontent.com/mcarpendale/vdbench/main/vdbench50407.zip
unzip vdbench50407.zip
