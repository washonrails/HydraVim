local filetypes = {
	"*.css",
	"*.html",
	"*.js",
	"*.php",
	"*.md"
}

vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
	pattern = filetypes,
	callback = function()
		vim.cmd "silent write"
	end
})
