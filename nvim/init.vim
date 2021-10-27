syntax on

set encoding=utf-8
set title
set mouse=a
set noerrorbells

set sw=4
set expandtab
set smartindent
set rnu number
set numberwidth=2
set nowrap
set noswapfile
set nobackup
set incsearch
    
set ignorecase
set clipboard=unnamedplus

set hidden
set smartcase
set termguicolors


call plug#begin('~/.vim/plugged')
    " aspects
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'projekt0n/github-nvim-theme'

    " emmet
    Plug 'mattn/emmet-vim'

    " commentary
    Plug 'tpope/vim-commentary'

    " coc-vim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " jsx-React
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'

    "nerdtree
    Plug 'preservim/nerdtree'

call plug#end()

colorscheme github_dark_default

source $HOME/.config/nvim/themes/airline.vim

source $HOME/.config/nvim/settings/keymaps.vim

source $HOME/.config/nvim/plug-config/coc.vim



