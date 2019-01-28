#!/bin/bash

#Step 1: Install Apache
sudo apt-get update && sudo apt-get install apache2 -y

#Step 2: Adjust the Firewall
#sudo ufw app list
#sudo ufw allow 'Apache Full'
#sudo ufw allow ssh
#sudo ufw status
#sudo ufw enable

#Step 3: Check your Web Server
sudo systemctl status apache2
hostname -I

#To re-enable the service to start up at boot
sudo systemctl enable apache2
sudo systemctl restart apache2
