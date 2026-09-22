-- Aviso limpio cuando NO estás en un repo git (en vez del stack trace de Telescope)
-- `opts` puede ser una tabla o una función que la devuelve (para capturar estado al invocar).
local function git_picker(name, opts)
  return function()
    vim.fn.system({ "git", "rev-parse", "--is-inside-work-tree" })
    if vim.v.shell_error ~= 0 then
      vim.notify("No estás en un repositorio git", vim.log.levels.WARN, { title = "Telescope" })
      return
    end
    local o = type(opts) == "function" and opts() or opts
    require("telescope.builtin")[name](o)
  end
end

return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Buscar archivos" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Buscar texto (grep)" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Buffers abiertos" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "Ayuda" },
      { "<leader>gs", git_picker("git_status"),   desc = "Git: archivos cambiados" },
      { "<leader>gc", git_picker("git_commits"),  desc = "Git: commits" },
      { "<leader>gb", git_picker("git_branches"), desc = "Git: branches" },
      -- Pasamos current_file para que telescope NO use el texto de la línea como
      -- regex en el preview (evita el crash E871 "multi follow a multi").
      { "<leader>gf", git_picker("git_bcommits", function()
        return { current_file = vim.api.nvim_buf_get_name(0) }
      end), desc = "Git: commits del archivo" },
    },
    config = function(_, opts)
      local actions = require("telescope.actions")
      local action_state = require("telescope.actions.state")

      local function yank_commit_sha(prompt_bufnr)
        local entry = action_state.get_selected_entry()
        if not entry or not entry.value then return end
        local sha = entry.value
        vim.fn.setreg("+", sha)
        vim.fn.setreg('"', sha)
        vim.notify("Commit copiado: " .. sha)
      end

      require("telescope").setup(vim.tbl_deep_extend("force", {
        defaults = {
          mappings = {
            i = { ["<C-y>"] = yank_commit_sha },
            n = { ["<C-y>"] = yank_commit_sha, ["y"] = yank_commit_sha },
          },
        },
      }, opts or {}))
    end,
  },
}
