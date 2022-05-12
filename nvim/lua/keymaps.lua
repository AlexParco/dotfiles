local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Normal --
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "w", ":w<CR>", opts)
keymap("n", "q", ":q<CR>", opts)
keymap("n", "<leader>w", ":wq<CR>", opts)
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)
keymap("n", "<leader>c", ":bd<CR>", opts)
keymap("n", "<leader>h", ":set hlsearch!<CR>", opts)
keymap("n", "ss", ":split<CR>", opts)
keymap("n", "sv", ":vsplit<CR>", opts)
keymap("n", "<F8>", ":MarkdownPreviewToggle<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("n", "<M-j>", ":m .+1<CR>", opts)
keymap("n", "<M-k>", ":m .-2<CR>", opts)

