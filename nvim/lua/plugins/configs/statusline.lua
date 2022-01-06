local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
  black = '#282828'
  -- black  = '#232323',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white, bg = colors.black },
  },

  insert = { a = { fg = colors.white, bg = colors.black } },
  visual = { a = { fg = colors.white, bg = colors.black } },
  replace = { a = { fg = colors.white, bg = colors.black } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

require('lualine').setup({
  options = {
    theme = bubbles_theme,
    component_separators = '|',
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename'},
    lualine_c = { 'location' },
    lualine_x = { 'branch' },
    lualine_z = {},
  },
  inactive_sections = {
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
})


