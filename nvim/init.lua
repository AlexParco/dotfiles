-- require('theme')

require('keybindings')

require('option')

require('plugins')

require('plugins.configs.lspconfig')


vim.cmd[[
 let g:gruvbox_material_background = 'hard'
" colorscheme gruvbox-material
source $HOME/.config/nvim/nightfall.vim
]]
