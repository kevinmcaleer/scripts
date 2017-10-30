#!/bin/bash
clear
echo "*** INSTALLING NODEJS VERSION 4.4.4 (For Raspberry Pi 3) ***"
echo "    --------------------------------------------------------"
echo ""
echo "Script by Kevin McAleer Copyright 30 October 2017, Version 1.3"
echo "--------------------------------------"
echo ""
echo "*** 1/5 DOWNLOADING NODEJS ***"
rm node-v4.4.4-linux-armv7l.tar.xz
rm -R node-v4.4.4-linux-armv7l
wget https://nodejs.org/dist/v4.4.4/node-v4.4.4-linux-armv7l.tar.xz
tar xJvf node-v4.4.4-linux-armv7l.tar.xz
echo ""
echo "*** 2/5 COPYING FILES TO LOCAL FOLDER ***"
cd node-v4.4.4-linux-armv7l
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
echo "Type node Core.js to launch HomeBridge "
echo ""
