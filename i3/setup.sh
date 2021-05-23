#!/bin/bash

# disable touchpad
TOUCHPAD=$(xinput list --short | grep Touchpad | cut -f 2 -d "=" | cut -f 1)
xinput set-prop $TOUCHPAD "Device Enabled" 0

# Connect PIA
PIA_BIN=/opt/piavpn/bin
$PIA_BIN/piactl background enable
$PIA_BIN/piactl connect
$PIA_BIN/pia-client & disown

# network manager
nm-applet & disown

# megasync
megasync & disown

# polybar
. $HOME/.config/polybar/toggle.sh

# xautolock
xautolock -time 5 -locker $HOME/.config/i3/i3-lock.sh & disown
