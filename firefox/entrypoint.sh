#!/bin/bash

set -xe
rm -rf /home/firefox/.x11vnc 2>/dev/null
mkdir -p "/home/firefox/.x11vnc"
VNC_PASSWD=admin
x11vnc -storepasswd $VNC_PASSWD /home/firefox/.x11vnc/passwd
chmod 600 /home/firefox/.x11vnc/passwd
Xvfb :5 -screen 0 1920x1080x24 &
sleep 5
x11vnc -display :5 -once -loop -noxdamage -repeat -rfbauth /home/firefox/.x11vnc/passwd -rfbport 5905 -shared  -scale 1920x1080 &
/home/firefox/noVNC/utils/launch.sh --vnc localhost:5905 &
firefox --display :5 -fullscreen -no-remote -new-window http://www.baidu.com 2> /dev/null
