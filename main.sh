#!/bin/bash

# Start vfb
# Start vnc

if [ -z "$VNC_PASSWORD" ]
then
    echo '[-] Please inform a password via VNC_PASSWORD variable'
    exit -1
fi

# This cannot be done during install, except if we want a static password
if [ ! -f /root/.vnc/passwd ]
then
    mkdir /root/.vnc
    x11vnc -storepasswd $VNC_PASSWORD /root/.vnc/passwd
fi

Xvfb -screen 0 900x900x16 -ac &
sleep 15
env DISPLAY=:0.0 x11vnc -noxrecord -noxfixes -noxdamage -forever -display :0 &
env DISPLAY=:0.0 fluxbox 

if [ -f /app.sh ]
then
    /app.sh
fi

