-- Configurações do plugin floaterm
vim.g.floaterm_position = "center"
vim.g.floaterm_width = 0.8
vim.g.floaterm_height = 0.8
vim.g.floaterm_borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }
vim.g.floaterm_autoclose = 2
vim.g.floaterm_opener = "edit"
vim.g.floaterm_title = ""
vim.g.floaterm_wintitle = 0

local H = {}

H.which_key = function()
	-- Configurações do which key
	vim.g.floaterm_position = "bottom"
	vim.g.floaterm_width = 0.8
	vim.g.floaterm_height = 0.2
	vim.g.floaterm_borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }
	vim.g.floaterm_autoclose = 2
	vim.g.floaterm_opener = "edit"
	vim.g.floaterm_title = ""
	vim.g.floaterm_wintitle = 0
end

return H
