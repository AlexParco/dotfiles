require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "vim",
    "javascript",
    "typescript", 
    "go",
    "markdown"
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  autopairs = {
    enable = true
  },

  indent = { enable = false, disable = { "yaml", "python" } },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
}
