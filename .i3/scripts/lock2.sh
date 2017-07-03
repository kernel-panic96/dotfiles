#!/bin/bash 
convert $1 -resize x$(xrandr | grep current | cut -d 'x' -f3 | cut -d ',' -f1) /tmp/screen.png
[[ -f $2 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
i3lock -ei /tmp/screen.png
rm /tmp/screen.png

