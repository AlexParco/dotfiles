require('keybindings')

require('option')

require('plugins')

require('plugins.configs.lspconfig')

-- vim.cmd("colorscheme github_dark_default")

--[[require("github-theme").setup({
  theme_style = "dark_default",
  dark_sidebar = false,
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  colors = {hint = "orange", error = "#ff0000"}
})]]

vim.cmd("colorscheme spacegray")
vim.cmd("let base16colorspace=256")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
