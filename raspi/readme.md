## Deluge guide

deluge default port 8112 e.g. http://192.168.1.13:8112
deluge default password: deluge

## for autostartup 
    sudo nano /etc/rc.local

add following

    # Start Deluge on boot:
    sudo -u pi /usr/bin/python /usr/bin/deluged
    sudo -u pi /usr/bin/python /usr/bin/deluge-web
