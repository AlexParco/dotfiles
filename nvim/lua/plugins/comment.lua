return {
  {
    "numToStr/Comment.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {},
    keys = {
      {
        "<leader>2",
        function()
          require("Comment.api").toggle.linewise.current()
        end,
        mode = "n",
        desc = "Toggle comment line",
      },
      {
        "<leader>2",
        "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
        mode = "v",
        desc = "Toggle comment selection",
      },
    },
  },
}
