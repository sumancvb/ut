#!/bin/bash
echo "****************************************************"
echo "Installing Apache2"
echo "****************************************************"
sudo apt-get update && sudo apt-get install apache2 -y

#Step 2: Adjust the Firewall
#sudo ufw app list
#sudo ufw allow 'Apache Full'
#sudo ufw allow ssh
#sudo ufw status
#sudo ufw enable
echo "****************************************************"
echo "Checking your Web Server"
echo "****************************************************"
sudo systemctl status apache2
echo " "
echo "your ip"
hostname -I

echo "****************************************************"
echo "re-enable the service to start up at boot"
echo "****************************************************"
sudo systemctl enable apache2
sudo systemctl restart apache2
echo "****************************************************"
echo "Installing Deluge"
echo "****************************************************"
sudo apt-get install deluged deluge-console python-mako deluge-web

echo "edit '/etc/rc.local' to enable deluge autostart"
echo "done"

