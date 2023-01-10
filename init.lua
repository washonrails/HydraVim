-- plugins
-- require ('config.comment')
-- require ('plugins.vim_plug')

local modules = {
	'plugins.packer',
	'config.autosave',
	'config.mappings',
	'config.settings',
	'lsp.coc',
	'lsp.treesitter',
	'lsp.lsp_config',
	'plugins.alpha',
	'plugins.vim_multi',
	'plugins.buffer',
	'plugins.colorizer',
	'plugins.comment',
	'plugins.gitsigns',
	'plugins.indent_line',
	'plugins.lualine',
	'plugins.nvim_tree',
	'plugins.telescope',
	'plugins.toggleterm',
	'plugins.which_key',
	'theme.theme',
}

for f, m in pairs(modules) do
	package.loaded[m] = nil
	require(m)
end
