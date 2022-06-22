fn = vim.fn
api = vim.api
cmd = vim.cmd
opt = vim.opt
g = vim.g

_G.theme = "gruvbox"

local modules = {
  'options',
  'mappings',
  'colors',
  'statusline',
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
  set t_Co=256
  colorscheme everforest
  hi Normal guibg=none
  hi EndOfBuffer guibg=none

  hi CursorLine guibg=none
  hi CursorLineNr guibg=none guifg=#cecece
  hi StatusLine guifg=#cecece guibg=none 
  hi Visual guibg=#262626 gui=none
  hi VertSplit guibg=none guifg=#cecece
  hi vimTodo guibg=none guifg=#fb4934 gui=bold
  hi Todo guibg=none guifg=#fb4934 gui=bold
  :set fillchars+=vert:\|

  " go " 
  let g:go_highlight_types = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_functions = 1
  let g:go_highlight_function_calls = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_extra_types = 1
  let g:go_highlight_variable_declarations = 1
  let g:go_highlight_variable_assignments = 1
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_diagnostic_errors = 1
  let g:go_highlight_diagnostic_warnings = 1
]]

