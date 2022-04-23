#!/bin/sh

# xsetroot -cursor_name left_ptr
# sxhkd &
# exec bspwm

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
exec i3

