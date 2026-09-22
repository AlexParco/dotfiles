return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      spec = {
        { "<leader>f", group = "Buscar (find)" },
        { "<leader>g", group = "Git" },
        { "<leader>s", group = "Splits / paneles" },
        { "<leader>r", group = "Refactor" },
        { "<leader>c", group = "Código" },
        { "<leader>t", group = "Terminal" },
      },
    },
    keys = {
      {
        "<leader>?",
        function() require("which-key").show({ global = false }) end,
        desc = "Atajos del buffer actual",
      },
    },
  },
}
