#!/bin/bash

cat ~/.config/i3/main > ~/.config/i3/config

if [ "$1" = "work" ]; then
    cat ~/.config/i3/work >> ~/.config/i3/config
fi

startx
