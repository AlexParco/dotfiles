call plug#begin("~/.vim/plugged")

Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/tagbar'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" theme
Plug 'nanotech/jellybeans.vim'

" Lsp supports 
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

" Snippet
Plug 'L3MON4D3/LuaSnip'

" Lsp base conf
Plug 'VonHeikemen/lsp-zero.nvim'

call plug#end()

" editorconfig 
let g:EditorConfig_exclude_patterns = ['scp://.*']
au FileType gitcommit let b:EditorConfig_disable = 1

" tagbar 
nmap <F8> :TagbarToggle fj<CR>
let g:tagbar_indent = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_width = 35
