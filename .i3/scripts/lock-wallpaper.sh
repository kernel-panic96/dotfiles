#!/bin/bash
convert $0 $1 -gravity center -composite -matte /tmp/init-lock.png
i3lock -nuei /tmp/init-lock.png
rm /tmp/init-lock.png
