#!/bin/bash
sudo apt-get update && sudo apt-get upgrade

#Plex media server installation
wget https://downloads.plex.tv/plex-media-server/1.14.1.5488-cc260c476/plexmediaserver_1.14.1.5488-cc260c476_amd64.deb
sudo dpkg -i plexmediaserver*.deb

#Add plex as a service 
sudo systemctl enable plexmediaserver.service && sudo systemctl start plexmediaserver.service

#Open port 32400 
sudo iptables -A INPUT -p tcp -d 0/0 -s 0/0 --dport 32400 -j ACCEPT

#Make media dir 
sudo mkdir /home/plex/ && sudo chown -v -R plex:plex /home/plex/
echo " "
echo "**************************************************************"
echo " "
echo "Open new putty session and add the server ip in Host Name"
echo "go under “Connection > SSH > Tunnels > Add new forwarded port"
echo " "
echo "set the following Source port: 32400 and Destination: localhost:32400""
echo " "
echo " "
echo "Go to a browser http://localhost:32400/web/index.html"
echo "**************************************************************"
