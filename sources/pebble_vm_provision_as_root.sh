#!/bin/bash

echo "---------------------------------------------------"
echo "                   Start as Root                   "
echo "---------------------------------------------------"
echo "---------------------------------------------------"
echo "                     Updating                      "
echo "---------------------------------------------------"
sudo apt-get update
echo "---------------------------------------------------"
echo "                     Upgrading                     "
echo "---------------------------------------------------"
sudo DEBIAN_FRONTEND=noninteractive apt-get --assume-yes --option Dpkg::Options::="--force-confdef" --option Dpkg::Options::="--force-confold" upgrade
echo "---------------------------------------------------"
echo "           Installing Dev Dependencies             "
echo "---------------------------------------------------"
sudo apt-get install --assume-yes git-core python-pip python2.7-dev language-pack-en-base libsdl1.2debian libfdt1 libpixman-1-0
sudo pip install virtualenv
echo "---------------------------------------------------"
echo "               Reconfiguring languages             "
echo "---------------------------------------------------"
sudo dpkg-reconfigure locales
echo "---------------------------------------------------"
echo "                    Done as Root                   "
echo "---------------------------------------------------"
