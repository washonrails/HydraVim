local present, lualine = pcall(require, "lualine")
local nomodoro = require("nomodoro")

if not present then
	return
end

local file_icon = require("lualine.components.filename"):extend()
file_icon.apply_icon = require("lualine.components.filetype").apply_icon

local function lsp_name()
	local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
	local clients = vim.lsp.get_active_clients()
	local client_name = next(clients)
			and clients[1].config.filetypes
			and vim.fn.index(clients[1].config.filetypes, buf_ft) ~= -1
			and clients[1].name
		or ""
	if not client_name or client_name == "" then
		return client_name
	end
	return string.format(" %s", client_name)
end

lualine.setup({
	options = {
		symbols = {
			added = " ",
			modified = " ",
			removed = " ",
			error = " ",
			warn = " ",
			info = " ",
			hint = " ",
		},
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			"alpha",
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = true,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { { icon = "", "mode" } },
		lualine_b = { { icon = "", "branch" } },
		lualine_x = { "diagnostics", nomodoro.status },
		lualine_y = { { lsp_name } },
		lualine_z = { { "progress", icon = "" } },
		lualine_c = {
			{ file_icon, symbols = { modified = "", readonly = "", unnamed = "No Name", newfile = "" } },
			"diff",
		},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
