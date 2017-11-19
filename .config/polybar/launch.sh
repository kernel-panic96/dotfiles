#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar top &
sleep 2
polybar bottom &

echo "Bars launched..."
