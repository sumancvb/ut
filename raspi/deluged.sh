sudo apt-get update

echo "*****************************************"
echo "installing deluged"

sudo apt-get install deluged
sudo apt-get install deluge-console

echo "*****************************************"
echo "After Deluge has finished installing, you need to run the Deluge daemon"

 
sudo pkill deluged
sudo deluged

echo "*****************************************"
echo "making backup of the original configuration file and then open it for editing"
echo "Once inside the nano text editor, you’ll need to add a line to the bottom"
echo "of the configuration file with the following convention:"
echo "user:password:level"
echo "Where user is the username you want for Deluge, password is the password you want,"
echo "and thelevel is 10 (the full-access administrative level for the daemon)."
echo "So for our purposes, we used pi:raspberry:10"
echo "When you’re done editing, hit Ctrl+X on your keyboard and save your changes when prompted"

cp ~/.config/deluge/auth ~/.config/deluge/auth.old 
sudo nano ~/.config/deluge/auth
sudo deluged deluge-console

echo "Once inside the console, you’ll need to make a quick configuration change. Enter the following"
echo "config -s allow_remote True config allow_remote exit"

echo " "
echo "killing the daemon"
sudo pkill deluged
echo "restarting it one more time so that the config changes take effect"
sudo deluged

echo "  "
echo "Deluge daemon is ready for remote access"
echo " "


echo "**********************************************"
echo "Setting Up Deluge for WebUI Access"
echo "**********************************************"
sudo apt-get install deluged
sudo apt-get install python-mako
sudo apt-get install deluge-web deluge-web

echo " "
echo "**********************************************"
echo "The default port for the WebUI is 8112"
echo "If you wish to change it"
echo "replace the 8112 with any port number above 1000"
sudo pkill deluge-web
sudo nano ~/.config/deluge/web.conf

echo "e.g. http://192.168.1.13:8112"
echo "your pi Ip address is"
hostname -I
echo "**********************************************"

