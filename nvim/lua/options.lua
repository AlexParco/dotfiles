local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 1,
  completeopt = { "menuone", "noselect" }, 
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  smartcase = true,
  cursorline = false,
  smartindent = true,
  termguicolors = true,
  expandtab = true,
  swapfile = false,
  shiftwidth = 4,
  tabstop = 4,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  wrap = false,
  laststatus = 0
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
