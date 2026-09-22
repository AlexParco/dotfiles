-- 5-colors-dark — port de https://github.com/manuartero/5-colors-dark
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end
vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.colors_name = "5colors-dark"

local p = {
  bg          = "#141414",   -- igual al fondo de Alacritty
  bg_alt      = "#0e0d03",
  bg_float    = "#292929",
  line        = "#000000",
  selection   = "#394f68",
  fg          = "#e7e7e7",
  fg_dim      = "#d4d4d4",
  fg_special  = "#ffffff",
  comment     = "#8d8d8d",
  muted       = "#8d8d8d",
  border      = "#535353",

  keyword     = "#b1ebe1",   -- italic
  keyword_sp  = "#a3fdee",   -- bold  (true/false/self)
  symbol      = "#8d8d8d",

  class       = "#ffb1fb",   -- underline
  class_dim   = "#cea8ce",

  func        = "#a7dff5",   -- bold
  variable    = "#9cdcfe",

  string      = "#fad591",
  number      = "#ffbf33",
  regex       = "#ce9178",
  regex_class = "#d16969",

  green       = "#b5cea8",
  blue        = "#569cd6",
  yellow_tag  = "#d7ba7d",

  error       = "#f44747",
  warn        = "#cd9731",
  info        = "#6796e6",
  hint        = "#b267e6",

  gutter      = "#404040",
  indent_on   = "#707070",
  ruler       = "#524950",
  whitespace  = "#4e4e47",
  tab_active  = "#322b14",
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
hi("CursorLineNr",   { fg = p.fg,                       bold = true })
hi("LineNr",         { fg = p.gutter })
hi("SignColumn",     { bg = p.bg })
hi("ColorColumn",    { bg = p.line })
hi("Folded",         { fg = p.comment, bg = p.line })
hi("FoldColumn",     { fg = p.gutter,  bg = p.bg })

hi("Visual",         { bg = p.selection })
hi("VisualNOS",      { bg = p.selection })
hi("Search",         { fg = p.bg,      bg = p.yellow_tag })
hi("IncSearch",      { fg = p.bg,      bg = p.number })
hi("CurSearch",      { fg = p.bg,      bg = p.number })
hi("MatchParen",     {                 bg = p.selection, bold = true })

hi("StatusLine",     { fg = p.fg,      bg = p.bg })
hi("StatusLineNC",   { fg = p.muted,   bg = p.bg })
hi("WinSeparator",   { fg = p.border,  bg = p.bg })
hi("VertSplit",      { fg = p.border,  bg = p.bg })

hi("TabLine",        { fg = p.muted,   bg = p.bg })
hi("TabLineFill",    { bg = p.bg })
hi("TabLineSel",     { fg = p.fg,      bg = p.tab_active, bold = true })

hi("Pmenu",          { fg = p.fg,      bg = p.bg_float })
hi("PmenuSel",       { fg = p.fg,      bg = p.selection,  bold = true })
hi("PmenuSbar",      { bg = p.bg_float })
hi("PmenuThumb",     { bg = p.border })

hi("WildMenu",       { fg = p.fg,      bg = p.selection })
hi("QuickFixLine",   {                 bg = p.selection })

hi("Directory",      { fg = p.func })
hi("Title",          { fg = p.func,    bold = true })
hi("Question",       { fg = p.green })
hi("MoreMsg",        { fg = p.green })
hi("ErrorMsg",       { fg = p.error,   bold = true })
hi("WarningMsg",     { fg = p.warn,    bold = true })
hi("ModeMsg",        { fg = p.fg,      bold = true })
hi("MsgArea",        { fg = p.fg })
hi("NonText",        { fg = p.whitespace })
hi("SpecialKey",     { fg = p.whitespace })
hi("Whitespace",     { fg = p.whitespace })
hi("EndOfBuffer",    { fg = p.bg })
hi("Conceal",        { fg = p.muted })

-- ========== Sintaxis clásica ==========
hi("Comment",        { fg = p.comment, italic = false })
hi("Constant",       { fg = p.string })
hi("String",         { fg = p.string })
hi("Character",      { fg = p.number })
hi("Number",         { fg = p.number })
hi("Float",          { fg = p.number })
hi("Boolean",        { fg = p.keyword_sp, bold = true })

hi("Identifier",     { fg = p.variable })
hi("Function",       { fg = p.func,    bold = true })

hi("Statement",      { fg = p.keyword, italic = true })
hi("Conditional",    { fg = p.keyword, italic = true })
hi("Repeat",         { fg = p.keyword, italic = true })
hi("Label",          { fg = p.keyword, italic = true })
hi("Operator",       { fg = p.symbol })
hi("Keyword",        { fg = p.keyword, italic = true })
hi("Exception",      { fg = p.keyword, italic = true })

hi("PreProc",        { fg = p.blue })
hi("Include",        { fg = p.keyword, italic = true })
hi("Define",         { fg = p.keyword, italic = true })
hi("Macro",          { fg = p.blue })
hi("PreCondit",      { fg = p.keyword, italic = true })

hi("Type",           { fg = p.class,   underline = true })
hi("StorageClass",   { fg = p.keyword, italic = true })
hi("Structure",      { fg = p.class,   underline = true })
hi("Typedef",        { fg = p.class,   underline = true })

hi("Special",        { fg = p.number })
hi("SpecialChar",    { fg = p.number })
hi("SpecialComment", { fg = p.comment, bold = true })
hi("Tag",            { fg = p.yellow_tag })
hi("Delimiter",      { fg = p.symbol })
hi("Debug",          { fg = p.hint })

hi("Underlined",     { fg = p.func,    underline = true })
hi("Error",          { fg = p.error })
hi("Todo",           { fg = p.warn,    bold = true })

-- ========== Treesitter ==========
hi("@comment",                 { link = "Comment" })
hi("@comment.todo",            { link = "Todo" })
hi("@comment.error",           { fg = p.error, bold = true })
hi("@comment.warning",         { fg = p.warn,  bold = true })
hi("@comment.note",            { fg = p.info,  bold = true })

hi("@variable",                { fg = p.fg })
hi("@variable.parameter",      { fg = p.fg_special, italic = true })
hi("@variable.member",         { fg = p.variable })
hi("@variable.builtin",        { fg = p.keyword_sp, bold = true })

hi("@constant",                { fg = p.number })
hi("@constant.builtin",        { fg = p.keyword_sp, bold = true })
hi("@constant.macro",          { fg = p.blue })

hi("@string",                  { fg = p.string })
hi("@string.escape",           { fg = p.number })
hi("@string.regexp",           { fg = p.regex })
hi("@string.special",          { fg = p.number })

hi("@character",               { fg = p.number })
hi("@number",                  { fg = p.number })
hi("@boolean",                 { fg = p.keyword_sp, bold = true })
hi("@float",                   { fg = p.number })

hi("@function",                { fg = p.func, bold = true })
hi("@function.call",           { fg = p.fg })
hi("@function.builtin",        { fg = p.keyword, italic = true })
hi("@function.macro",          { fg = p.blue })
hi("@function.method",         { fg = p.func, bold = true })
hi("@function.method.call",    { fg = p.fg })
hi("@constructor",             { fg = p.class, underline = true })

hi("@keyword",                 { fg = p.keyword, italic = true })
hi("@keyword.function",        { fg = p.keyword, italic = true })
hi("@keyword.operator",        { fg = p.keyword, italic = true })
hi("@keyword.return",          { fg = p.keyword, italic = true })
hi("@keyword.conditional",     { fg = p.keyword, italic = true })
hi("@keyword.repeat",          { fg = p.keyword, italic = true })
hi("@keyword.import",          { fg = p.keyword, italic = true })
hi("@keyword.storage",         { fg = p.keyword, italic = true })

hi("@operator",                { fg = p.symbol })
hi("@punctuation",             { fg = p.symbol })
hi("@punctuation.bracket",     { fg = p.symbol })
hi("@punctuation.delimiter",   { fg = p.symbol })
hi("@punctuation.special",     { fg = p.symbol })

hi("@type",                    { fg = p.class, underline = true })
hi("@type.builtin",            { fg = p.class, underline = true })
hi("@type.definition",         { fg = p.class, underline = true })
hi("@type.qualifier",          { fg = p.keyword, italic = true })

hi("@attribute",               { fg = p.class_dim })
hi("@property",                { fg = p.variable })
hi("@field",                   { fg = p.variable })

hi("@tag",                     { fg = p.yellow_tag })
hi("@tag.attribute",           { fg = p.variable })
hi("@tag.delimiter",           { fg = p.symbol })

hi("@markup.strong",           { fg = p.fg_special, bold = true })
hi("@markup.italic",           { italic = true })
hi("@markup.underline",        { underline = true })
hi("@markup.strikethrough",    { strikethrough = true })
hi("@markup.heading",          { fg = p.func, bold = true, underline = true })
hi("@markup.link",             { fg = p.func, underline = true })
hi("@markup.link.url",         { fg = p.string, underline = true })
hi("@markup.raw",              { fg = p.class })
hi("@markup.list",             { fg = p.fg })
hi("@markup.quote",            { fg = p.green, italic = true })

-- ========== LSP semantic ==========
hi("@lsp.type.class",          { link = "@type" })
hi("@lsp.type.interface",      { link = "@type" })
hi("@lsp.type.enum",           { link = "@type" })
hi("@lsp.type.type",           { link = "@type" })
hi("@lsp.type.function",       { link = "@function" })
hi("@lsp.type.method",         { link = "@function.method" })
hi("@lsp.type.variable",       { link = "@variable" })
hi("@lsp.type.parameter",      { link = "@variable.parameter" })
hi("@lsp.type.property",       { link = "@property" })
hi("@lsp.type.keyword",        { link = "@keyword" })
hi("@lsp.type.comment",        { link = "@comment" })
hi("@lsp.type.string",         { link = "@string" })
hi("@lsp.type.number",         { link = "@number" })
hi("@lsp.type.namespace",      { fg = p.class_dim })

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
hi("TelescopeResultsTitle", { fg = p.bg,    bg = p.class_dim, bold = true })
hi("TelescopePreviewTitle", { fg = p.bg,    bg = p.green, bold = true })
hi("TelescopeSelection",    { fg = p.fg,    bg = p.selection, bold = true })
hi("TelescopeMatching",     { fg = p.number,bold = true })

hi("NeoTreeNormal",         { fg = p.fg_dim, bg = p.bg })
hi("NeoTreeNormalNC",       { fg = p.fg_dim, bg = p.bg })
hi("NeoTreeRootName",       { fg = p.func,   bold = true })
hi("NeoTreeDirectoryName",  { fg = p.fg })
hi("NeoTreeDirectoryIcon",  { fg = p.yellow_tag })
hi("NeoTreeGitModified",    { fg = p.blue })
hi("NeoTreeGitAdded",       { fg = p.green })
hi("NeoTreeGitDeleted",     { fg = p.error })
hi("NeoTreeGitUntracked",   { fg = p.green })
hi("NeoTreeIndentMarker",   { fg = p.gutter })

hi("IndentBlanklineChar",        { fg = p.gutter })
hi("IndentBlanklineContextChar", { fg = p.indent_on })
hi("IblIndent",                  { fg = p.gutter })
hi("IblScope",                   { fg = p.indent_on })

hi("WhichKey",          { fg = p.keyword, italic = true })
hi("WhichKeyGroup",     { fg = p.func })
hi("WhichKeyDesc",      { fg = p.fg })
hi("WhichKeySeparator", { fg = p.symbol })
hi("WhichKeyFloat",     { bg = p.bg_float })
