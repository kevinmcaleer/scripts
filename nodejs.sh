#!/bin/bash
clear
echo "*** INSTALLING NODEJS VERSION 4.2.1 ***"
echo "    -------------------------------"
echo ""
echo "Script by Kevin McAleer Copyright 2017"
echo "--------------------------------------"
echo ""
wget https://nodejs.org/dist/v4.2.1/node-v4.2.1-linux-armv6l.tar.xz
tar xJvf node-v4.2.1-linux-armv6l.tar.xz
echo ""
echo "*** COPYING FILES TO LOCAL FOLDER ***"
cd node-v4.2.1-linux-armv6l
cp -R * /usr/local/
export path=$PATH:/usr/local/bin
echo ""
echo "*** CHECKING VERSION ***"
echo ""
node -v 
npm -v
git clone https://github.com/KhaosT/HAP-NodeJS.git
cd HAP-NodeJS/

npm install node-persist && npm install srp && npm install mdns
npm install ed25519 && npm install curve25519 && npm install debug
node BridgedCore.js
echo "Done."
