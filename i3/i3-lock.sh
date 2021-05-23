#!/bin/bash

# produce lock screen
IMAGE=/tmp/i3lock.png
scrot $IMAGE
convert -scale 25% -blur 0x2.5 -resize 400% $IMAGE $IMAGE

BL_LEVEL=$(xbacklight -get)
xbacklight -set 1

# lock (blocking)
i3lock -n -i $IMAGE

xbacklight -set $BL_LEVEL

rm $IMAGE
