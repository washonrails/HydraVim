local modules = {
	"plugins.lazy",
	"config.autocmd",
	"config.mappings",
	"config.settings",
	"config.command",
	"theme.theme",
	"core.ui.colors",
	"plugins.folding",
}

for _, name in pairs(modules) do
	package.loaded[name] = nil
	require(name)
end
