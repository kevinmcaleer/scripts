#!/bin/bash
clear
echo "*** INSTALLING NODEJS VERSION 4.4.4 ***"
echo "    -------------------------------"
echo ""
echo "Script by Kevin McAleer Copyright 2017, Version 1.2"
echo "--------------------------------------"
echo ""
echo "*** 1/5 DOWNLOADING NODEJS ***"
rm node-v4.4.4-linux-armv6l.tar.xz
rm -R node-v4.4.4-linux-armv6l
wget https://nodejs.org/dist/v4.4.4/node-v4.4.4-linux-armv6l.tar.xz
tar xJvf node-v4.4.4-linux-armv6l.tar.xz
echo ""
echo "*** 2/5 COPYING FILES TO LOCAL FOLDER ***"
cd node-v4.4.4-linux-armv6l
cp -R * /usr/local/
export path=$PATH:/usr/local/bin
echo ""
echo "*** 3/5 CHECKING VERSION ***"
echo ""
node -v 
npm -v
echo ""
echo "*** 4/5 INSTALLING HAP-NodeJS ***"
echo ""
git clone https://github.com/KhaosT/HAP-NodeJS.git
cd HAP-NodeJS/
echo "*** 5/5 INSTALLING DEPENDENCIES ***"
apt-get install libavahi-compat-libdnssd-dev
npm install node-persist && npm install srp && npm install mdns
npm install ed25519 && npm install curve25519 && npm install debug
npm rebuild
# node Core.js
echo ""
echo "*** Done ***"
echo ""
echo "Type node Core.js to launch HomeBridge 
echo ""
