vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.clipboard = "unnamedplus"
vim.o.backup = false
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.swapfile = false
vim.o.hidden = true
vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.termguicolors = true


local x = 2
vim.o.tabstop = x
vim.o.softtabstop = x 
vim.o.shiftwidth = x
vim.o.autoindent = true


vim.cmd[[
autocmd Filetype go setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype python setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype ruby setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype php setlocal ts=4 sw=4 sts=4 expandtab

set colorcolumn=120
set numberwidth=6
set hlsearch
]]
