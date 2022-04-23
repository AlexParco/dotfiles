syntax on
set encoding=utf-8
set hidden
set noswapfile
set nobackup
set rnu number
set clipboard=unnamedplus
set termguicolors
set autoindent
set nowrap
set laststatus=0

let mapleader=','
imap jk <C-c>
map w :w<CR>
map q :q<CR>
map <leader>wq :wq<CR>
map <leader>t :t.<CR>
map <leader>e :e 
map <leader>p :PlugInstall<CR>

map sv :vsplit<CR>
map ss :split<CR>
map <leader>bd :bw<CR>

" buffer moves
map <C-h> <C-w>h  
map <C-j> <C-w>j  
map <C-k> <C-w>k  
map <C-l> <C-w>l  
map <C-N> :bnext<CR>
map <C-P> :bprev<CR>
imap <C-N> <Esc>:bnext<CR>i
imap <C-P> <Esc>:bprev<CR>i

source $HOME/.config/nvim/pck.vim
lua require('initlsp')

colorscheme jellybeans

" change colors
hi Normal guifg='#ffffff'
hi SignColumn guibg='#151515'
hi StatusLine guifg='#ffffff' guibg=none

