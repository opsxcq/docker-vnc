#!/bin/bash

# Start vfb
# Start vnc

# This cannot be done during install, except if we want a static password
if [ ! -f /root/.vnc/passwd ]
then
    mkdir /root/.vnc
    x11vnc -storepasswd test /root/.vnc/passwd
fi

Xvfb -screen 0 800x600x16 -ac &
sleep 15
env DISPLAY=:0.0 x11vnc -forever -display :0 &
env DISPLAY=:0.0 fluxbox 

