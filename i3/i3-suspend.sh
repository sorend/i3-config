#!/bin/bash

# produce lock screen
IMAGE=/tmp/i3lock.png
scrot $IMAGE
convert -scale 10% -scale 1000% $IMAGE $IMAGE

i3lock -i $IMAGE

systemctl suspend

rm $IMAGE
