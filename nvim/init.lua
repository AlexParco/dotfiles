-- require('theme')

require('keybindings')

require('option')

require('plugins')

require('plugins.configs.lspconfig')

vim.g.gruvbox_flat_style = "hard"
vim.g.gruvbox_italic_functions = false
vim.g.gruvbox_transparent = true
vim.cmd[[
" let g:gruvbox_material_background = 'hard'
" set t_Co=256
" colorscheme minimalist
source $HOME/.config/nvim/themes/mytheme.vim
]]
