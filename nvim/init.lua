vim.g.mapleader = ","
vim.g.maplocalleader = ","

local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

opt.clipboard = "unnamedplus"

opt.splitright = true
opt.splitbelow = true

-- Calidad de vida
opt.undofile = true          -- undo persistente entre sesiones
opt.ignorecase = true        -- búsqueda insensible a mayúsculas...
opt.smartcase = true         -- ...salvo que escribas alguna mayúscula
opt.signcolumn = "yes"       -- columna de signos siempre visible (evita saltos)
opt.scrolloff = 8            -- mantiene 8 líneas de margen al hacer scroll
opt.cursorline = true        -- resalta la línea actual
opt.termguicolors = true     -- colores true-color (necesario para el tema)

local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Salir a modo normal" })
map("i", "kj", "<Esc>", { desc = "Salir a modo normal" })

map("n", "<leader>w", "<cmd>w<CR>", { desc = "Guardar" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Salir" })
map("n", "<leader>wq", "<cmd>wq<CR>", { desc = "Guardar y salir" })
map("n", "<leader>Q", "<cmd>qa!<CR>", { desc = "Salir forzado (todos)" })

-- Splits / paneles
map("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split vertical" })
map("n", "<leader>sh", "<cmd>split<CR>",  { desc = "Split horizontal" })
map("n", "<leader>sc", "<cmd>close<CR>",  { desc = "Cerrar panel actual" })
map("n", "<leader>so", "<cmd>only<CR>",   { desc = "Cerrar otros paneles" })

-- Navegar entre paneles con Ctrl + hjkl
map("n", "<C-h>", "<C-w>h", { desc = "Ir panel izq" })
map("n", "<C-j>", "<C-w>j", { desc = "Ir panel abajo" })
map("n", "<C-k>", "<C-w>k", { desc = "Ir panel arriba" })
map("n", "<C-l>", "<C-w>l", { desc = "Ir panel der" })

-- Redimensionar con Ctrl + flechas
map("n", "<C-Up>",    "<cmd>resize +2<CR>",          { desc = "Alto +" })
map("n", "<C-Down>",  "<cmd>resize -2<CR>",          { desc = "Alto -" })
map("n", "<C-Left>",  "<cmd>vertical resize -2<CR>", { desc = "Ancho -" })
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Ancho +" })

-- Desactiva Ex mode
map("n", "Q", "<Nop>", { desc = "Desactivar Ex mode" })

-- En modo normal: w guarda, q sale (sobrescribe el movimiento de palabra)
map("n", "w", "<cmd>w<CR>", { desc = "Guardar" })
map("n", "q", "<cmd>q<CR>", { desc = "Salir" })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
  change_detection = { notify = false },
})

vim.opt.termguicolors = true
vim.cmd.colorscheme("vs2019-dark")

-- Iconos de diagnósticos (en vez de las letras E/W/I/H) + UX
vim.diagnostic.config({
  severity_sort = true,
  underline = true,
  update_in_insert = false,
  virtual_text = { spacing = 4, source = "if_many", prefix = "●" },
  float = { border = "rounded", source = "if_many" },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN]  = "",
      [vim.diagnostic.severity.INFO]  = "",
      [vim.diagnostic.severity.HINT]  = "",
    },
  },
})
