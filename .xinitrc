#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

sxhkd &
xsetroot -cursos_name left_ptr
exec bspwm


