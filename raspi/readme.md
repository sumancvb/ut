## Deluge guide

deluge default port 8112 e.g. http://192.168.1.13:8112
deluge default password: deluge

## for autostartup Deluge
    sudo nano /etc/rc.local

add following

    # Start Deluge on boot:
    sudo -u pi /usr/bin/python /usr/bin/deluged
    sudo -u pi /usr/bin/python /usr/bin/deluge-web


# Here's how to disable the ipv6 protocol on a Debian-based machine.

1. Open a terminal window.

2. Issue the command:

    sudo nano /etc/sysctl.conf

3. Add the following at the bottom of the file:
    net.ipv6.conf.all.disable_ipv6 = 1
    net.ipv6.conf.default.disable_ipv6 = 1
    net.ipv6.conf.lo.disable_ipv6 = 1
    
4. Save and close the file.

5. Reboot the machine.

To re-enable IPv6, remove the above lines from /etc/sysctl.conf and reboot the machine.
