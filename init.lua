local modules = {
	'plugins.packer',
	'config.autosave',
	'config.mappings',
	'config.settings',
	-- 'lsp.coc',
	-- 'lsp.treesitter',
	-- 'lsp.lsp_config',
	-- 'plugins.alpha',
	-- 'plugins.vim_multi',
	-- 'plugins.buffer',
	-- 'plugins.colorizer',
	-- 'plugins.comment',
	-- 'plugins.gitsigns',
	-- 'plugins.indent_line',
	-- 'plugins.lualine',
	-- 'plugins.nvim_tree',
	-- 'plugins.telescope',
	-- 'plugins.toggleterm',
	-- 'plugins.which_key',
	'theme.theme',
}

for i, name in pairs(modules) do
	package.loaded[name] = nil
	require(name)
end
