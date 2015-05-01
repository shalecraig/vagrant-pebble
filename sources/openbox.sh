#!/bin/bash

echo "---------------------------------------------------"
echo "                 Installing Openbox                "
echo "---------------------------------------------------"
apt-get install --assume-yes openbox obconf xfe xfce4-terminal xorg

echo "---------------------------------------------------"
echo "                 startx at login                   "
echo "---------------------------------------------------"
echo '[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx' >> /home/vagrant/.profile
