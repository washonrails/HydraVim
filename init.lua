local modules = {
	'plugins.packer',
	'config.autosave',
	'config.mappings',
	'config.settings',
	'core.updater',
	'theme.theme',
	'plugins.folding',
}

for i, name in pairs(modules) do
	package.loaded[name] = nil
	require(name)
end
