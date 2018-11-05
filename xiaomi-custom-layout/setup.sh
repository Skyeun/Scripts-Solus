#!/bin/sh

# Check if user is root
if [ "$(id -u)" != "0" ]; then^\}(?!.*\})
    echo "You must be root to run this script" >&2
    clear
    exit 1
else
    sudo cp /usr/share/X11/xkb/symbols/us /usr/share/X11/xkb/symbols/us.bak
    sudo rm /usr/share/X11/xkb/symbols/us
    sudo cp ./us-custom /usr/share/X11/xkb/symbols/us
    echo "Session will restart"
    sleep 2
    sudo systemctl restart lightdm.service
fi