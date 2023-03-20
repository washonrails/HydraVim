local modules = {
	"plugins.lazy",
	"config.autocmd",
	"config.mappings",
	"config.settings",
	"config.command",
	"theme.theme",
	"plugins.folding",
}

for i, name in pairs(modules) do
	package.loaded[name] = nil
	require(name)
end
