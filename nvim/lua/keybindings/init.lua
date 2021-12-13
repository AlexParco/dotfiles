vim.g.mapleader = ','
local map = vim.api.nvim_set_keymap 

map('n', '<Space>', '<NOP>', {noremap = true, silent = true})
map('n', 'w', ':w<CR>', {noremap = true, silent = true})

map('n', 'q', ':q<CR>', {noremap = true, silent = true})
map('n', '<leader>qq', ':q!<CR>', {noremap = true, silent = true})
map('n', '<leader>wq', ':wq<CR>', {noremap = true, silent = true})

map('v', '<', '<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})

map('i', 'jk', '<ESC>', {noremap = true, silent = true})

map('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
map('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})

vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
vim.cmd("vnoremap // y/\\V<C-R>=escape(@\",'/\')<CR><CR>")
