require('keybindings')

require('option')

require('plugins')

require('plugins.configs.lspconfig')

vim.g.vscode_style = "dark"
vim.g.vscode_disable_nvimtree_bg = true 
vim.cmd[[
" let g:gruvbox_material_background = 'hard'
" let g:gruvbox_material_better_performance = 1
colorscheme vscode 
" source $HOME/.config/nvim/spacegray.vim
]]
