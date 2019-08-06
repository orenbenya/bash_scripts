#!/bin/bash

xdotool getactivewindow set_window --name speedy
xdotool search --name speedy windowminimize
speedtest-cli --simple

if [ $? -eq 0 ]
then
xdotool search --name speedy windowactivate
xdotool key "F11"
fi
exec $SHELL
