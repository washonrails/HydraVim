local autocmd = vim.api.nvim_create_autocmd

local filetypes = {
	"*.html",
	"*.htm",
	"*.css",
	"*.scss",
	"*.less",
	"*.ts",
	"*.tsx",
	"*.vue",
	"*.md",
	"*.mdx",
}

autocmd({ "InsertEnter" }, {
	pattern = "*",
	command = "setlocal nohlsearch",
})

autocmd({ "InsertLeave" }, {
	pattern = "*",
	command = "setlocal hlsearch",
})

autocmd({ "TextChanged", "TextChangedI" }, {
	pattern = filetypes,
	command = "silent write",
})

autocmd({ "BufWritePost" }, {
	pattern = "*",
	command = "lua require('notify')('Saved File                                     🥶', 'info')",
})
