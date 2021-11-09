-- leader 
vim.g.mapleader = ','

vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = false})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = false})

vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'w', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'q', ':q<CR>', {noremap = true, silent = true})


-- Nvimtree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

