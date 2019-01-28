#!/bin/bash
sudo apt-get update && sudo apt-get upgrade

apt-get install libssl1.0.0 libssl-dev

#wget http://download-new.utorrent.com/endpoint/utserver/os/linux-x64-ubuntu-13-04/track/beta/ -O utorrent.tar.gz
wget http://download-hr.utorrent.com/track/beta/endpoint/utserver/os/linux-i386-debian-7-0  -O utserver.tar.gz

tar -zxvf utserver.tar.gz -C /opt/
chmod 777 /opt/utorrent-server-alpha-v3_3/
ln -s /opt/utorrent-server-alpha-v3_3/utserver /usr/bin/utserver
utserver -settingspath /opt/utorrent-server-alpha-v3_3/ &
echo "http://xx.xx.xx.xx:8080/gui/web/index.html"
ifconfig | awk '/inet addr/{print substr($2,6)}'

# don't forget to make it executable chmod a+x xyz.sh
