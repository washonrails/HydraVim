local autocmd = vim.api.nvim_create_autocmd

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

autocmd({ "InsertEnter"}, {
	pattern = '*',
    command = "setlocal nohlsearch"
})

autocmd({ "InsertLeave"}, {
	pattern = '*',
    command = "setlocal hlsearch",
})

autocmd({ "TextChanged", "TextChangedI" }, {
	pattern = filetypes,
    command = "silent write"
})
