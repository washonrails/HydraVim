local helpers = require("runner.handlers.helpers")
local function map(m, k, v, i)
	vim.keymap.set(m, k, v, i, { silent = true })
end

local handlers = {
	rust = require("runner.handlers.languages.rust"),
	python = require("runner.handlers.languages.python"),
	lua = helpers.command_handler("luafile %"),
	javascript = require("runner.handlers.languages.nodejs"),
	typescript = require("runner.handlers.languages.nodejs"),
	vue = require("runner.handlers.languages.nodejs"),
}

map("n", "<space>r", require("runner").run)
map("n", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

return handlers
