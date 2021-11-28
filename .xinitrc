#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
sxhkd &
xsetroot -cursor_name left_ptr
exec bspwm


