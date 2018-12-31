#!/bin/bash
sudo apt-get update
apt upgrade
apt-get install libssl1.0.0 libssl-dev
wget http://download-new.utorrent.com/endpoint/utserver/os/linux-x64-ubuntu-13-04/track/beta/ -O utorrent.tar.gz
tar -zxvf utorrent.tar.gz -C /opt/
chmod 777 /opt/utorrent-server-alpha-v3_3/
ln -s /opt/utorrent-server-alpha-v3_3/utserver /usr/bin/utserver
utserver -settingspath /opt/utorrent-server-alpha-v3_3/ &
echo "http://xx.xx.xx.xx:8080/gui/web/index.html"
echo "ifconfig eth0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://"


# don't forget to make it executable chmod a+x xyz.sh
