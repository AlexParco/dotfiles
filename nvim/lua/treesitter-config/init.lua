
require'nvim-treesitter.configs'.setup {
    enable = true,
    ensure_installed = "all",
    ignore_install = {"haskell"},
    indent = {enable = true},
    highlight = {enable = true},
    autotag = {enable = true},
    rainbow = {enable = true, extended_mode = false, disable = {"html"}},
}
