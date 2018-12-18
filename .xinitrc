#xrandr --output eDP1 --output HDMI2 --same-as eDP1 #same as
xrandr --output eDP1 --primary --right-of HDMI2 #normal
xset -b
exec i3
