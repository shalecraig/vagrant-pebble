#!/bin/bash

echo "---------------------------------------------------"
echo "                 Start as vagrant                  "
echo "---------------------------------------------------"

echo "---------------------------------------------------"
echo "          Starting to Build Pebble Stuff           "
echo "---------------------------------------------------"
mkdir -p /home/vagrant/pebble-dev
chown vagrant:vagrant /home/vagrant/pebble-dev
cd /home/vagrant/pebble-dev
echo "---------------------------------------------------"
echo "              Getting the pebble sdk               "
echo "---------------------------------------------------"
wget https://s3.amazonaws.com/assets.getpebble.com/sdk2/PebbleSDK-2.7.tar.gz
tar -zxf PebbleSDK-2.7.tar.gz
echo "---------------------------------------------------"
echo "                Setting up profile                 "
echo "---------------------------------------------------"
echo 'export PATH=/home/vagrant/pebble-dev/PebbleSDK-2.7/bin:$PATH' >> /home/vagrant/.profile
source /home/vagrant/.profile
cd /home/vagrant/pebble-dev/PebbleSDK-2.7
echo "---------------------------------------------------"
echo "               Getting ubuntu tools                "
echo "---------------------------------------------------"
wget http://assets.getpebble.com.s3-website-us-east-1.amazonaws.com/sdk/arm-cs-tools-ubuntu-universal.tar.gz
tar -zxf arm-cs-tools-ubuntu-universal.tar.gz
echo "---------------------------------------------------"
echo "            Setting up using virtualenv            "
echo "---------------------------------------------------"
virtualenv --no-site-packages .env
source .env/bin/activate
echo "---------------------------------------------------"
echo "            Pip installing requirements            "
echo "---------------------------------------------------"
pip install -r /home/vagrant/pebble-dev/PebbleSDK-2.7/requirements.txt
deactivate
echo "---------------------------------------------------"
echo "                       Done!                       "
echo "---------------------------------------------------"
