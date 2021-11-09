#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
sxhkd &
wal -R
xsetroot -cursor_name left_ptr
exec bspwm


