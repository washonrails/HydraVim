require('lualine').setup {
  options = {
	symbols = { added = ' ', modified = ' ', removed = ' ', error = ' ', warn = ' ', info = ' ', hint = ' '},
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
disabled_filetypes = {
      'NvimTree','alpha',
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {{icon = '', 'mode'}},
    lualine_b = {{ icon = '','branch'}},
    lualine_x = {'diagnostics'},
    lualine_y = {'filetype'},
    lualine_z = {{'location', icon = ''}},
    lualine_c = {'diff'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
