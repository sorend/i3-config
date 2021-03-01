#!/usr/bin/env bash

POLY_PID=$(pgrep -u $UID -x polybar)

if [[ -z "$POLY_PID" ]]; then
	polybar example &
	echo "Polybar started..."
else
	killall -q polybar
	echo "Polybar stopped..."
fi

