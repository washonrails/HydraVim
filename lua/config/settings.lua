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
		neovide_transparency = 0.6,
	},
}

for type, table in pairs(options) do
	for option, value in pairs(table) do
		vim[type][option] = value
	end
end
