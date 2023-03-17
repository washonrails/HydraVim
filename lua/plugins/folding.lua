vim.o.foldlevel = 99
vim.o.foldcolumn = '1'
vim.wo.foldnestmax = 3
vim.wo.foldminlines = 1
vim.o.foldenable = true
vim.o.foldlevelstart = 99
-- vim.o.foldtext = [[' ...']]
vim.wo.foldmethod = "indent"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.o.foldtext = [[' '.(v:foldend-v:foldstart+0).' lines...']]

vim.cmd('highlight Folded ctermbg=NONE guibg=NONE')
vim.cmd('highlight FoldColumn ctermfg=NONE guifg=NONE')
