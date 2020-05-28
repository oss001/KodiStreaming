#!/bin/bash
echo " "
echo "Starting setup, this will only work on Kodi V18 or greater..."
sleep 5
echo " "
echo "Installing dependencies..."
apt-get install python-pip python-crypto build-essential libnss3-dev -y > /dev/null
apt-get install python-all-dev python-setuptools python-wheel -y > /dev/null
apt-get install python-crypto-dbg python-crypto-doc python-pip-whl -y > /dev/null
echo "Complete."
echo " "
echo "Setting up Pycryptodome..."
pip install pycryptodomex > /dev/null
ln -s /usr/lib/python2.7/dist-packages/Crypto /usr/lib/python2.7/dist-packages/Cryptodome
echo "Complete."
echo " "
echo "Getting Netflix Repository..."
mkdir /addons
cd /addons
wget https://github.com/castagnait/repository.castagnait/raw/master/repository.castagnait-1.0.1.zip
echo "Complete."
echo " "
echo "Getting Amazon Reporitory..."
wget https://github.com/Sandmann79/xbmc/releases/download/Repository/repository.sandmann79.plugins-1.0.3-leia.zip
echo " "
echo "Complete."
echo " "
echo "Reboot in"
echo "5"
sleep 1
echo "4"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
sudo reboot
