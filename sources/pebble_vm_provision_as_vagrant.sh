#!/bin/bash

PEBBLE_SDK=PebbleSDK-3.0-dp7

echo "---------------------------------------------------"
echo "                 Start as vagrant                  "
echo "---------------------------------------------------"

echo "---------------------------------------------------"
echo "          Starting to Build Pebble Stuff           "
echo "---------------------------------------------------"
mkdir -p /home/vagrant/pebble-dev
cd /home/vagrant/pebble-dev
echo "---------------------------------------------------"
echo "              Getting the pebble sdk               "
echo "---------------------------------------------------"
wget -q -a /vagrant/pebble.log http://assets.getpebble.com.s3-website-us-east-1.amazonaws.com/sdk2/$PEBBLE_SDK.tar.gz

tar -zxf $PEBBLE_SDK.tar.gz
rm $PEBBLE_SDK.tar.gz
chown -R vagrant:vagrant /home/vagrant/pebble-dev
echo "---------------------------------------------------"
echo "                Setting up profile                 "
echo "---------------------------------------------------"
echo "export PATH=/home/vagrant/pebble-dev/$PEBBLE_SDK/bin:\$PATH" >> /home/vagrant/.profile
cd /home/vagrant/pebble-dev/$PEBBLE_SDK
echo "---------------------------------------------------"
echo "               Getting ubuntu tools                "
echo "---------------------------------------------------"
wget -q -a /vagrant/pebble.log http://assets.getpebble.com.s3-website-us-east-1.amazonaws.com/sdk/arm-cs-tools-ubuntu-universal.tar.gz
tar -zxf arm-cs-tools-ubuntu-universal.tar.gz
echo "---------------------------------------------------"
echo "            Setting up using virtualenv            "
echo "---------------------------------------------------"
virtualenv --no-site-packages .env
source .env/bin/activate
echo "---------------------------------------------------"
echo "            Pip installing requirements            "
echo "---------------------------------------------------"
pip install -r requirements.txt
deactivate
echo "---------------------------------------------------"
echo "                       Done!                       "
echo "---------------------------------------------------"
