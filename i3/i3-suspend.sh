#!/bin/bash

IMAGE=/tmp/i3lock.png

scrot $IMAGE

convert -scale 25% -blur 0x2.5 -resize 400% $IMAGE $IMAGE

i3lock -i $IMAGE

systemctl suspend

rm $IMAGE
