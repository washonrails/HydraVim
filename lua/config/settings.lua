local cmd = vim.cmd
local g = vim.g

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
	},
}

for type, table in pairs(options) do
	for option, value in pairs(table) do
		vim[type][option] = value
	end
end

g.terminal_color_0 = "#282828"
g.terminal_color_1 = "#ff6961"
g.terminal_color_2 = "#77dd77"
g.terminal_color_3 = "#fdfd96"
g.terminal_color_4 = "#458588"
g.terminal_color_5 = "#b16286"
g.terminal_color_6 = "#77dd77"
g.terminal_color_7 = "#a89984"
g.terminal_color_8 = "#928374"
g.terminal_color_9 = "#fb4934"
g.terminal_color_10 = "#77dd77"
g.terminal_color_11 = "#ffe180"
g.terminal_color_12 = "#83a598"
g.terminal_color_13 = "#d3869b"
g.terminal_color_14 = "#77dd77"
g.terminal_color_15 = "#ebdbb2"
