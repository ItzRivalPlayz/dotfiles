#
#
#  ____  _  
# |  _ \(_)_   ____ _| |
# | |_) | \ \ / / _` | |
# |  _ <| |\ V / (_| | |
# |_| \_\_| \_/ \__,_|_|

#!/usr/bin/env bash 

lxsession &
picom &
nm-applet &
nitrogen --set-zoom-fill $HOME/Pictures/wallpapers/3.jpg &
xrandr --output eDP-1-1 --mode 1920x1080 --pos 3840x0 --rotate normal &
xrandr --output HDMI-0 --primary --mode 3840x1080 --pos 0x0 --rotate normal &
