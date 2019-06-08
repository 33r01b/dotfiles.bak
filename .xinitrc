#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

source $HOME/.exports
#xrandr --dpi 96 #scale
#xrandr --output eDP1 --output HDMI2 --same-as eDP1 #same as
xrandr --output eDP1 --primary --right-of HDMI2 #normal
#xrandr --output HDMI2 --mode 2560x1440 --left-of eDP1 --primary
xset r rate 200 30
xset -b
pulseaudio -D
exec i3
