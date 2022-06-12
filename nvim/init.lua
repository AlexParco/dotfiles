fn = vim.fn
api = vim.api
cmd = vim.cmd
opt = vim.opt
g = vim.g

_G.theme = "gruvbox"

local modules = {
  'options',
  'mappings',
  'statusline',
  'colors',
  'plugins',
  'lsp'
}

for i, a in ipairs(modules) do
  local ok, err = pcall(require, a)
  if not ok then 
    error("Error calling " .. a .. err)
  end
end

-- Auto commands
cmd [[
  au TermOpen term://* setlocal nonumber norelativenumber signcolumn=no | setfiletype terminal
  colorscheme gruvbox
  hi Normal guibg=none 
  hi SignColumn guibg=none
  hi CursorLine guibg=none
  hi CursorLineNr guibg=none
  hi StatusLine guifg=#141414 guibg=#cecece 
  hi Visual guibg=#242424 gui=none
  hi VertSplit guibg=none
  :set fillchars+=vert:\|
]]
