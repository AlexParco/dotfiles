local present, gitsigns = pcall(require, "gitsigns")

if present then
  return
end

gitsigns.setup {
  signs = {
    add = { hl = "DiffAdd", text = "│", numhl = "GcwoitSignsAddNr" },
    change = { hl = "DiffChange", text = "│", numhl = "GitSignsChangeNr" },
    delete = { hl = "DiffDelete", text = "│", numhl = "GitSignsDeleteNr" },
    topdelete = { hl = "DiffDelete", text = "│", numhl = "GitSignsDeleteNr" },
    changedelete = { hl = "DiffChangeDelete", text = "│", numhl = "GitSignsChangeNr" },
  },
}

