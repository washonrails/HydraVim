local cmd = vim.cmd

local options = {
    opt = {
        mouse = 'a',
        tabstop = 4,
        number = true,
        clipboard = "unnamedplus",
        shiftwidth = 4,
        cursorline = true,
        smartindent = true,
        termguicolors = true,
        showmode = false,
        fillchars = { eob = " ", fold = " ", vert = "│"}
    },
    o = {
        syntax = 'on',
        updatetime = 250,
        undofile = true,
        smartcase = true,
        ignorecase = true,
        splitright = true,
        splitbelow = true,
    },
    wo = {
        wrap = false
    },
    g = {
    mapleader = ' ',
    maplocalleader = ' ',
    }
}

for type, table in pairs(options) do
  for option, value in pairs(table) do
    vim[type][option] = value
  end
end
