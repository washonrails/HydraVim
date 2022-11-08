local file_icon = require('lualine.components.filename'):extend()
file_icon.apply_icon = require('lualine.components.filetype').apply_icon

local function lsp_p()
	local icon = ''
	local n_msg = 'No LSP'
    local msg = string.format("%s %s", icon, n_msg)
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return string.format("%s %s",icon, client.name)
      end
    end
    return msg
  end

require('lualine').setup {
  options = {
	symbols = { added = ' ', modified = ' ', removed = ' ', error = ' ', warn = ' ', info = ' ', hint = ' '},
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
    lualine_y = {{ lsp_p }},
    lualine_z = {{'progress', icon = ''}},
    lualine_c = {{file_icon},'diff'}
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
