fn = vim.fn
api = vim.api
cmd = vim.cmd
opt = vim.opt
g = vim.g

_G.theme = "material"

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
]]
