local map = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {noremap=true, silent=true})
end


map("n","w", ":w<CR>")
map("v","w", ":w<CR>")
map("n","q", ":q<CR>")
map("n","tt", ":t.<CR>")
map("n","<leader>qq", ":q!<CR>")


map("n","<leader>e", ":NvimTreeToggle<CR>")
map("n","<leader>ff", ":Telescope find_files<cr>")
map("n","<leader>fg", ":Telescope live_grep<cr>")


map("n", "<TAB>", ":BufferLineCycleNext<CR>")
map("n", "<S-TAB>", ":BufferLineCyclePrev<CR>")


map("n", "<leader>x", ":TroubleToggle<cr>")


map("v", "<", "<gv")
map("v", ">", ">gv")
