#!/bin/sh

# Check if user is root
if [ "$(id -u)" != "0" ]; then^\}(?!.*\})
    echo "You must be root to run this script" >&2
    clear
    exit 1
else
    sudo rm /usr/share/X11/xkb/symbols/us
    sudo cp /usr/share/X11/xkb/symbols/us.bak /usr/share/X11/xkb/symbols/us
    echo "Session will restart"
    sleep 5
    sudo systemctl restart lightdm.service
fi