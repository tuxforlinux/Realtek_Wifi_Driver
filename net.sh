#!/bin/bash

sudo apt-get update

sudo apt-get upgrade -y

sudo apt-get install git -y

sudo apt-get install make -y

sudo apt-get install g++ -y

sudo apt-get install wget -y

sudo apt-get install linux-headers-$(uname -r) build-essential git -y

git clone https://github.com/lwfinger/rtlwifi_new.git

cd rtlwifi_new/ && git checkout origin/extended -b extended

sudo make install

sudo modprobe -r rtl8723de

sudo modprobe rtl8723de

sudo modprobe -r rtl8723de && sleep 5 && sudo modprobe rtl8723de ant_sel=3

echo "options rtl8723de ant_sel=3" | sudo tee /etc/modprobe.d/rtl8723de.conf
