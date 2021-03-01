#!/bin/bash

DIRNAME="$(realpath "$(dirname "$0")")"

function do_relink() {
    if [[ -d "$2" ]]; then
        rm -r "$2"
    fi
    if [[ -L "$2" ]]; then
        rm "$2"
    fi
    ln -s "$1" "$2"
}

do_relink "$DIRNAME/i3" ~/.config/i3
do_relink "$DIRNAME/polybar" ~/.config/polybar
do_relink "$DIRNAME/dunst" ~/.config/dunst
