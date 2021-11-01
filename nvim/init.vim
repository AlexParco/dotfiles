set nowrap
set noswapfile
set nobackup
set clipboard=unnamedplus
set sw=2
set expandtab
set smartindent
set rnu number
set numberwidth=2

let mapleader=","
set tabstop=2

lua require('plugins')
lua require('core.cmp')
lua require('core.nvimtree')
lua require('core.treesitter')

lua require('lsp.config')
lua require('lsp.installer')

 " themes
lua <<EOF
require("github-theme").setup({
  theme_style = "dark_default",
  comment_style = "italic",
  keyword_style = "italic",
  function_style = "italic",
  variable_style = "italic"
  -- other config
})
EOF
