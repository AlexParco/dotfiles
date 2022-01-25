#!/bin/sh

# [[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

wal -R
xsetroot -cursor_name left_ptr
sxhkd &
exec bspwm

#dont use i3 never jeje 
# exec i3
