# Docker VNC
[![Docker Pulls](https://img.shields.io/docker/pulls/strm/vnc.svg?style=plastic)](https://hub.docker.com/r/strm/vnc/)

Dockerize GUI applications easily by just extending this container ! It uses x11vnc, a tool that allows one to view remotely and interact with real X displays (i.e. a display corresponding to a physical monitor, keyboard, and mouse) with any VNC viewer.

# How to run

This image isn't intended to be run as it is, instead it should be used in a `FROM` keyword from another image, where you will install the tools that you want to run.

Create a shell script to start your desired application and add to the container `COPY yourScript /app.sh`, it will run when the environment initialize

# Variables

  * `VNC_PASSWORD` - Password for the VNC connection
