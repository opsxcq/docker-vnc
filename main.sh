#!/bin/bash

# Start vfb
# Start vnc

# This cannot be done during install, except if we want a static password
if [ ! -f /root/.vnc/passwd ]
then
    mkdir /root/.vnc
    x11vnc -storepasswd test /root/.vnc/passwd
fi
