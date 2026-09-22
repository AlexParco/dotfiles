return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<leader>t",  "<cmd>ToggleTerm<cr>",                    desc = "Terminal (toggle)" },
      { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>",    desc = "Terminal flotante" },
      { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Terminal vertical" },
      { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Terminal horizontal" },
      { "<leader>tt", "<cmd>ToggleTerm direction=tab<cr>",       desc = "Terminal pantalla completa (tab)" },
    },
    opts = {
      open_mapping = nil,            -- usamos los keys de arriba
      direction = "horizontal",      -- por defecto: split abajo
      size = function(term)
        if term.direction == "horizontal" then return 15
        elseif term.direction == "vertical" then return math.floor(vim.o.columns * 0.4) end
      end,
      float_opts = { border = "curved" },
      start_in_insert = true,
      persist_size = true,
      persist_mode = true,
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      -- Atajos dentro del terminal (modo terminal)
      vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "term://*toggleterm#*",
        callback = function()
          local o = { buffer = 0 }
          vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], o)        -- salir a modo normal
          vim.keymap.set("t", "jk",    [[<C-\><C-n>]], o)        -- salir con jk (como tu config)
          vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], o)  -- navegar paneles
          vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], o)
          vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], o)
          vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], o)
        end,
      })
    end,
  },
}
