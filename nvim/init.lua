require('keybindings')

require('plugins')

require('option')

require('logs.colorizer')

local colors = require('ayu.colors')

vim.cmd("colorscheme ayu-dark")

require('nvim-autopairs').setup{}

require('plugins.configs.lspconfig')
