return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
      { "<leader>n", "<cmd>Neotree toggle<cr>", desc = "Explorador (Neo-tree)" },
    },
    opts = {
      default_component_configs = {
        diagnostics = {
          symbols = {
            error = "",
            warn  = "",
            info  = "",
            hint  = "",
          },
        },
      },
      filesystem = {
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
      },
      window = { width = 32 },
    },
  },
}
