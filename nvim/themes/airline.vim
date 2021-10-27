" enable powerline fonts
let g:airline_powerline_fonts = 1

let g:airline_theme = 'minimalist'

" Always show tabs
set showtabline=1

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" set font terminal font or set gui vim font
" to a Nerd Font (https://github.com/ryanoasis/nerd-fonts):
set guifont=DroidSansMono\ Nerd\ Font\ 12

" testing rounded separators (extra-powerline-symbols):
let g:airline_left_sep = "\uE0B0"
let g:airline_right_sep = "\uE0B2"

let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])

