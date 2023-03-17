local filetypes = {
    "*.html",
    "*.htm",
    "*.css",
    "*.scss",
    "*.less",
    "*.js",
    "*.jsx",
    "*.ts",
    "*.tsx",
    "*.vue",
    "*.md",
    "*.mdx",
}

vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
	pattern = filetypes,
	callback = function()
		vim.cmd "silent write"
	end
})
