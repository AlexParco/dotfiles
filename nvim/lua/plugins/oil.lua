return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Abrir Oil (directorio del archivo)" },
    },
    opts = {
      default_file_explorer = true,
      view_options = { show_hidden = true },
    },
  },
}
