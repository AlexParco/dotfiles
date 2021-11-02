set nowrap
set noswapfile
set nobackup
set clipboard=unnamedplus
set sw=4
set expandtab
set smartindent
set rnu number
set numberwidth=4
set tabstop=4

let mapleader=","

lua require('keymap')
lua require('plugins')
lua require('core.cmp')
lua require('core.dashboard')
lua require('core.nvimtree')
lua require('core.treesitter')
lua require('core.gitsigns')
lua require('core.trouble')
lua require('core.telescope')
lua require('core.line')

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
