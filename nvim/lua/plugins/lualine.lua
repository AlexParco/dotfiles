return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local function get_hl(name)
        local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = name, link = false })
        if not ok then return nil end
        return hl
      end

      local function make_theme()
        local normal = get_hl("Normal") or {}
        local comment = get_hl("Comment") or {}
        local bg = normal.bg and string.format("#%06x", normal.bg) or "NONE"
        local fg = normal.fg and string.format("#%06x", normal.fg) or "#ffffff"
        local muted = comment.fg and string.format("#%06x", comment.fg) or fg

        local section = { bg = bg, fg = fg }
        local section_muted = { bg = bg, fg = muted }

        return {
          normal   = { a = section, b = section_muted, c = section_muted },
          insert   = { a = section, b = section_muted, c = section_muted },
          visual   = { a = section, b = section_muted, c = section_muted },
          replace  = { a = section, b = section_muted, c = section_muted },
          command  = { a = section, b = section_muted, c = section_muted },
          inactive = { a = section_muted, b = section_muted, c = section_muted },
        }
      end

      require("lualine").setup({
        options = {
          theme = make_theme(),
          globalstatus = true,
          section_separators = "",
          component_separators = "│",
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { { "filename", path = 1 } },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          require("lualine").setup({
            options = {
              theme = make_theme(),
              globalstatus = true,
              section_separators = "",
              component_separators = "│",
            },
          })
        end,
      })
    end,
  },
}
