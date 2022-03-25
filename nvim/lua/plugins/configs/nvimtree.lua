local git_status = 0
local ui = {
        allow_resize = true,
        side = "left",
        width = 25,
        hide_root_folder = false,
   }

local g = vim.g
g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
g.nvim_tree_git_hl = git_status
g.nvim_tree_indent_markers = 1
-- g.nvim_tree_quit_on_open = 1 -- closes tree when file's opened
--g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }

-- g.nvim_tree_window_picker_exclude = {
--    filetype = { "notify", "packer", "qf" },
--    buftype = { "terminal" },
-- }

g.nvim_tree_show_icons = {
   folders = 1,
   files = 1,
   git = git_status,
}

g.nvim_tree_icons = {
   default = "",
   symlink = "",
   git = {
      deleted = "",
      ignored = "◌",
      renamed = "➜",
      staged = "✓",
      unmerged = "",
      unstaged = "✗",
      untracked = "★",
   },
   folder = {
      default = "",
      empty = "",
      empty_open = "",
      open = "",
      symlink = "",
      symlink_open = "",
   },
}

require'nvim-tree'.setup {
   filters = {
      dotfiles = false,
   },
   disable_netrw = true,
   hijack_netrw = true,
   ignore_ft_on_setup = { "dashboard" },
   auto_close = false,
   open_on_tab = false,
   hijack_cursor = false,
   update_cwd = false,
   update_focused_file = {
      enable = true,
      update_cwd = false,
   },
   view = ui,
   git = {
      ignore = false,
   },
}

