#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -blur 18,5 /tmp/screen.png
#convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
#convert $1 -resize x$(xrandr | grep 'current' | awk '{print $10}' | cut -d ',' -f1) /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
i3lock -nuei /tmp/screen.png
rm /tmp/screen.png
