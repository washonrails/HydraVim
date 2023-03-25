local cmd = vim.cmd
vim.api.nvim_set_keymap('n', ';', ':', { noremap = true })

local options = {
	opt = {
		mouse = "a",
		tabstop = 4,
		number = true,
		clipboard = "unnamedplus",
		shiftwidth = 4,
		cursorline = true,
		smartindent = true,
		termguicolors = true,
		showmode = false,
		fillchars = { eob = " ", fold = " ", vert = "│" },
	},
	o = {
		syntax = "on",
		updatetime = 250,
		undofile = true,
		smartcase = true,
		ignorecase = true,
		splitright = true,
		splitbelow = true,
	},
	wo = {
		wrap = false,
	},
	g = {
		mapleader = " ",
		maplocalleader = " ",
		neovide_scale_factor = 0.8,
		neovide_hide_mouse_when_typing = true,
		neovide_transparency = 0.8,
		terminal_color_0 = "#282828",
		terminal_color_1 = "#ff6961",
		terminal_color_2 = "#77dd77",
		terminal_color_3 = "#fdfd96",
		terminal_color_4 = "#458588",
		terminal_color_5 = "#b16286",
		terminal_color_6 = "#77dd77",
		terminal_color_7 = "#a89984",
		terminal_color_8 = "#928374",
		terminal_color_9 = "#fb4934",
		terminal_color_10 = "#77dd77",
		terminal_color_11 = "#ffe180",
		terminal_color_12 = "#83a598",
		terminal_color_13 = "#d3869b",
		terminal_color_14 = "#77dd77",
		terminal_color_15 = "#ebdbb2",
	},
}

for type, table in pairs(options) do
	for option, value in pairs(table) do
		vim[type][option] = value
	end
end
