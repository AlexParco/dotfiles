-- vs2019-dark — port de "Visual Studio 2019 Dark" (VS Code Dark+)
-- Background forzado a #141414 (igual a Alacritty/nvim actual), no el #1e1e1e original.
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end
vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.colors_name = "vs2019-dark"

local p = {
  bg          = "#141414",   -- mantenido (Alacritty)
  bg_float    = "#252526",   -- menus / popups (VS)
  bg_sel_ui   = "#094771",   -- seleccion en listas (Pmenu)
  line        = "#2a2a2a",   -- cursorline
  selection   = "#264f78",   -- Visual (editor.selection de VS)
  border      = "#454545",

  fg          = "#d4d4d4",
  fg_special  = "#ffffff",
  comment     = "#6a9955",
  doc_comment = "#608b4e",
  muted       = "#858585",
  label       = "#c8c8c8",

  keyword     = "#569cd6",   -- azul: keyword, storage, var.language
  control     = "#c586c0",   -- morado: control de flujo (if/return/import)
  string      = "#ce9178",
  number      = "#b5cea8",
  regex       = "#d16969",
  escape      = "#d7ba7d",

  func        = "#dcdcaa",   -- amarillo
  type        = "#4ec9b0",   -- teal: class/type
  type2       = "#b8d7a3",   -- interface/enum/type-param
  struct      = "#86c691",
  variable    = "#9cdcfe",   -- celeste
  constant    = "#4fc1ff",   -- constantes / enummember
  tag         = "#569cd6",
  attribute   = "#9cdcfe",
  css_tag     = "#d7ba7d",

  error       = "#f44747",
  warn        = "#cca700",
  info        = "#3794ff",
  hint        = "#b267e6",
  green       = "#b5cea8",
  blue        = "#569cd6",

  gutter      = "#5a5a5a",
  gutter_on   = "#c6c6c6",
  indent      = "#404040",
  indent_on   = "#707070",
}

local function hi(group, opts) vim.api.nvim_set_hl(0, group, opts) end

-- ========== UI ==========
hi("Normal",         { fg = p.fg,      bg = p.bg })
hi("NormalNC",       { fg = p.fg,      bg = p.bg })
hi("NormalFloat",    { fg = p.fg,      bg = p.bg_float })
hi("FloatBorder",    { fg = p.border,  bg = p.bg_float })
hi("FloatTitle",     { fg = p.func,    bg = p.bg_float, bold = true })

hi("Cursor",         { fg = p.bg,      bg = p.fg_special })
hi("CursorLine",     {                 bg = p.line })
hi("CursorLineNr",   { fg = p.gutter_on,                bold = true })
hi("LineNr",         { fg = p.gutter })
hi("SignColumn",     { bg = p.bg })
hi("ColorColumn",    { bg = p.line })
hi("Folded",         { fg = p.comment, bg = p.line })
hi("FoldColumn",     { fg = p.gutter,  bg = p.bg })

hi("Visual",         { bg = p.selection })
hi("VisualNOS",      { bg = p.selection })
hi("Search",         { fg = p.fg,      bg = "#613214" })
hi("IncSearch",      { fg = p.bg,      bg = p.escape })
hi("CurSearch",      { fg = p.bg,      bg = p.escape })
hi("MatchParen",     {                 bg = p.selection, bold = true })

hi("StatusLine",     { fg = p.fg,      bg = p.bg })
hi("StatusLineNC",   { fg = p.muted,   bg = p.bg })
hi("WinSeparator",   { fg = p.border,  bg = p.bg })
hi("VertSplit",      { fg = p.border,  bg = p.bg })

hi("TabLine",        { fg = p.muted,   bg = p.bg })
hi("TabLineFill",    { bg = p.bg })
hi("TabLineSel",     { fg = p.fg,      bg = p.bg_float, bold = true })

hi("Pmenu",          { fg = p.fg,      bg = p.bg_float })
hi("PmenuSel",       { fg = p.fg_special, bg = p.bg_sel_ui, bold = true })
hi("PmenuSbar",      { bg = p.bg_float })
hi("PmenuThumb",     { bg = p.border })

hi("WildMenu",       { fg = p.fg,      bg = p.bg_sel_ui })
hi("QuickFixLine",   {                 bg = p.selection })

hi("Directory",      { fg = p.keyword })
hi("Title",          { fg = p.keyword, bold = true })
hi("Question",       { fg = p.green })
hi("MoreMsg",        { fg = p.green })
hi("ErrorMsg",       { fg = p.error,   bold = true })
hi("WarningMsg",     { fg = p.warn,    bold = true })
hi("ModeMsg",        { fg = p.fg,      bold = true })
hi("MsgArea",        { fg = p.fg })
hi("NonText",        { fg = p.indent })
hi("SpecialKey",     { fg = p.indent })
hi("Whitespace",     { fg = p.indent })
hi("EndOfBuffer",    { fg = p.bg })
hi("Conceal",        { fg = p.muted })

-- ========== Sintaxis clásica ==========
hi("Comment",        { fg = p.comment })
hi("Constant",       { fg = p.constant })
hi("String",         { fg = p.string })
hi("Character",      { fg = p.keyword })
hi("Number",         { fg = p.number })
hi("Float",          { fg = p.number })
hi("Boolean",        { fg = p.keyword })

hi("Identifier",     { fg = p.variable })
hi("Function",       { fg = p.func })

hi("Statement",      { fg = p.control })
hi("Conditional",    { fg = p.control })
hi("Repeat",         { fg = p.control })
hi("Label",          { fg = p.control })
hi("Operator",       { fg = p.operator or p.fg })
hi("Keyword",        { fg = p.keyword })
hi("Exception",      { fg = p.control })

hi("PreProc",        { fg = p.keyword })
hi("Include",        { fg = p.control })
hi("Define",         { fg = p.control })
hi("Macro",          { fg = p.keyword })
hi("PreCondit",      { fg = p.control })

hi("Type",           { fg = p.type })
hi("StorageClass",   { fg = p.keyword })
hi("Structure",      { fg = p.type })
hi("Typedef",        { fg = p.type })

hi("Special",        { fg = p.escape })
hi("SpecialChar",    { fg = p.escape })
hi("SpecialComment", { fg = p.doc_comment })
hi("Tag",            { fg = p.tag })
hi("Delimiter",      { fg = p.fg })
hi("Debug",          { fg = p.hint })

hi("Underlined",     { fg = p.keyword, underline = true })
hi("Error",          { fg = p.error })
hi("Todo",           { fg = p.bg, bg = p.warn, bold = true })

-- ========== Treesitter ==========
hi("@comment",                 { link = "Comment" })
hi("@comment.todo",            { link = "Todo" })
hi("@comment.error",           { fg = p.error, bold = true })
hi("@comment.warning",         { fg = p.warn,  bold = true })
hi("@comment.note",            { fg = p.info,  bold = true })
hi("@comment.documentation",   { fg = p.doc_comment })

hi("@variable",                { fg = p.variable })
hi("@variable.parameter",      { fg = p.variable })
hi("@variable.member",         { fg = p.variable })
hi("@variable.builtin",        { fg = p.keyword })

hi("@constant",                { fg = p.constant })
hi("@constant.builtin",        { fg = p.keyword })
hi("@constant.macro",          { fg = p.keyword })

hi("@string",                  { fg = p.string })
hi("@string.escape",           { fg = p.escape })
hi("@string.regexp",           { fg = p.regex })
hi("@string.special",          { fg = p.escape })

hi("@character",               { fg = p.keyword })
hi("@number",                  { fg = p.number })
hi("@boolean",                 { fg = p.keyword })
hi("@float",                   { fg = p.number })

hi("@function",                { fg = p.func })
hi("@function.call",           { fg = p.func })
hi("@function.builtin",        { fg = p.func })
hi("@function.macro",          { fg = p.keyword })
hi("@function.method",         { fg = p.func })
hi("@function.method.call",    { fg = p.func })
hi("@constructor",             { fg = p.type })

hi("@keyword",                 { fg = p.keyword })
hi("@keyword.function",        { fg = p.keyword })
hi("@keyword.operator",        { fg = p.keyword })
hi("@keyword.return",          { fg = p.control })
hi("@keyword.conditional",     { fg = p.control })
hi("@keyword.repeat",          { fg = p.control })
hi("@keyword.exception",       { fg = p.control })
hi("@keyword.import",          { fg = p.control })
hi("@keyword.storage",         { fg = p.keyword })

hi("@operator",                { fg = p.fg })
hi("@punctuation",             { fg = p.fg })
hi("@punctuation.bracket",     { fg = p.fg })
hi("@punctuation.delimiter",   { fg = p.fg })
hi("@punctuation.special",     { fg = p.keyword })

hi("@type",                    { fg = p.type })
hi("@type.builtin",            { fg = p.keyword })
hi("@type.definition",         { fg = p.type })
hi("@type.qualifier",          { fg = p.keyword })

hi("@module",                  { fg = p.fg })
hi("@attribute",               { fg = p.func })
hi("@property",                { fg = p.variable })
hi("@field",                   { fg = p.variable })

hi("@tag",                     { fg = p.tag })
hi("@tag.attribute",           { fg = p.attribute })
hi("@tag.delimiter",           { fg = p.muted })

hi("@markup.strong",           { fg = p.fg_special, bold = true })
hi("@markup.italic",           { italic = true })
hi("@markup.underline",        { underline = true })
hi("@markup.strikethrough",    { strikethrough = true })
hi("@markup.heading",          { fg = p.keyword, bold = true })
hi("@markup.link",             { fg = p.keyword, underline = true })
hi("@markup.link.url",         { fg = p.string, underline = true })
hi("@markup.raw",              { fg = p.string })
hi("@markup.list",             { fg = p.info })
hi("@markup.quote",            { fg = p.comment, italic = true })

-- ========== LSP semantic ==========
hi("@lsp.type.class",          { link = "@type" })
hi("@lsp.type.interface",      { fg = p.type2 })
hi("@lsp.type.enum",           { fg = p.type2 })
hi("@lsp.type.enumMember",     { fg = p.constant })
hi("@lsp.type.struct",         { fg = p.struct })
hi("@lsp.type.type",           { link = "@type" })
hi("@lsp.type.typeParameter",  { fg = p.type2 })
hi("@lsp.type.function",       { link = "@function" })
hi("@lsp.type.method",         { link = "@function.method" })
hi("@lsp.type.variable",       { link = "@variable" })
hi("@lsp.type.parameter",      { link = "@variable.parameter" })
hi("@lsp.type.property",       { link = "@property" })
hi("@lsp.type.keyword",        { link = "@keyword" })
hi("@lsp.type.comment",        { link = "@comment" })
hi("@lsp.type.string",         { link = "@string" })
hi("@lsp.type.number",         { link = "@number" })
hi("@lsp.type.namespace",      { fg = p.fg })

-- ========== Diagnostics ==========
hi("DiagnosticError",          { fg = p.error })
hi("DiagnosticWarn",           { fg = p.warn })
hi("DiagnosticInfo",           { fg = p.info })
hi("DiagnosticHint",           { fg = p.hint })
hi("DiagnosticOk",             { fg = p.green })

hi("DiagnosticUnderlineError", { undercurl = true, sp = p.error })
hi("DiagnosticUnderlineWarn",  { undercurl = true, sp = p.warn })
hi("DiagnosticUnderlineInfo",  { undercurl = true, sp = p.info })
hi("DiagnosticUnderlineHint",  { undercurl = true, sp = p.hint })

hi("DiagnosticVirtualTextError", { fg = p.error, bg = p.bg })
hi("DiagnosticVirtualTextWarn",  { fg = p.warn,  bg = p.bg })
hi("DiagnosticVirtualTextInfo",  { fg = p.info,  bg = p.bg })
hi("DiagnosticVirtualTextHint",  { fg = p.hint,  bg = p.bg })

-- ========== Diff / Git ==========
hi("DiffAdd",       { bg = "#173321" })
hi("DiffChange",    { bg = "#1b2a3d" })
hi("DiffDelete",    { bg = "#3a1e1e", fg = p.error })
hi("DiffText",      { bg = "#2c4a6b" })

hi("GitSignsAdd",           { fg = p.green })
hi("GitSignsChange",        { fg = p.blue })
hi("GitSignsDelete",        { fg = p.error })
hi("GitSignsAddNr",         { fg = p.green })
hi("GitSignsChangeNr",      { fg = p.blue })
hi("GitSignsDeleteNr",      { fg = p.error })

-- ========== Plugins ==========
hi("TelescopeNormal",       { fg = p.fg,    bg = p.bg_float })
hi("TelescopeBorder",       { fg = p.border,bg = p.bg_float })
hi("TelescopePromptNormal", { fg = p.fg,    bg = p.bg_float })
hi("TelescopePromptBorder", { fg = p.border,bg = p.bg_float })
hi("TelescopePromptTitle",  { fg = p.bg,    bg = p.func, bold = true })
hi("TelescopeResultsTitle", { fg = p.bg,    bg = p.type, bold = true })
hi("TelescopePreviewTitle", { fg = p.bg,    bg = p.green, bold = true })
hi("TelescopeSelection",    { fg = p.fg_special, bg = p.bg_sel_ui, bold = true })
hi("TelescopeMatching",     { fg = p.func,  bold = true })

hi("NeoTreeNormal",         { fg = p.fg, bg = p.bg })
hi("NeoTreeNormalNC",       { fg = p.fg, bg = p.bg })
hi("NeoTreeRootName",       { fg = p.keyword, bold = true })
hi("NeoTreeDirectoryName",  { fg = p.fg })
hi("NeoTreeDirectoryIcon",  { fg = p.css_tag })
hi("NeoTreeGitModified",    { fg = p.blue })
hi("NeoTreeGitAdded",       { fg = p.green })
hi("NeoTreeGitDeleted",     { fg = p.error })
hi("NeoTreeGitUntracked",   { fg = p.green })
hi("NeoTreeIndentMarker",   { fg = p.indent })

hi("IblIndent",                  { fg = p.indent })
hi("IblScope",                   { fg = p.indent_on })

hi("WhichKey",          { fg = p.control })
hi("WhichKeyGroup",     { fg = p.func })
hi("WhichKeyDesc",      { fg = p.fg })
hi("WhichKeySeparator", { fg = p.muted })
hi("WhichKeyFloat",     { bg = p.bg_float })
