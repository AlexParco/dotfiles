return {
  {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    event = "VeryLazy",
    config = function()
      local mc = require("multicursor-nvim")
      mc.setup()

      local set = vim.keymap.set

      -- Cmd+D de VSCode: selecciona palabra/siguiente ocurrencia y añade cursor
      set({ "n", "x" }, "<leader>d", function() mc.matchAddCursor(1) end,
        { desc = "MC: siguiente ocurrencia (Cmd+D)" })
      -- Saltar la ocurrencia actual sin seleccionarla
      set({ "n", "x" }, "<leader>D", function() mc.matchSkipCursor(1) end,
        { desc = "MC: saltar ocurrencia" })
      -- Seleccionar TODAS las ocurrencias de golpe
      set({ "n", "x" }, "<leader>A", mc.matchAllAddCursors,
        { desc = "MC: todas las ocurrencias" })

      -- Añadir cursor arriba / abajo (columna)
      set({ "n", "x" }, "<leader>k", function() mc.lineAddCursor(-1) end, { desc = "MC: cursor arriba" })
      set({ "n", "x" }, "<leader>j", function() mc.lineAddCursor(1) end,  { desc = "MC: cursor abajo" })

      -- Atajos activos SOLO mientras hay multi-cursores
      mc.addKeymapLayer(function(layer)
        layer({ "n", "x" }, "<left>",  mc.prevCursor)   -- cursor previo
        layer({ "n", "x" }, "<right>", mc.nextCursor)   -- cursor siguiente
        layer({ "n", "x" }, "<leader>x", mc.deleteCursor) -- borrar cursor actual
        layer("n", "<esc>", function()
          if not mc.cursorsEnabled() then
            mc.enableCursors()
          else
            mc.clearCursors()
          end
        end)
      end)

      -- Colores (se integran con tu colorscheme)
      local hl = vim.api.nvim_set_hl
      hl(0, "MultiCursorCursor",         { link = "Cursor" })
      hl(0, "MultiCursorVisual",         { link = "Visual" })
      hl(0, "MultiCursorSign",           { link = "SignColumn" })
      hl(0, "MultiCursorMatchPreview",   { link = "Search" })
      hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
      hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
    end,
  },
}
