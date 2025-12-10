#!/bin/bash

choice=$(printf "shutdown\nreboot" | wofi --dmenu -p "shutdown or reboot?")

if [ "$choice" = "shutdown" ]; then
    shutdown -h now
elif [ "$choice" = "reboot" ]; then
    reboot
fi

