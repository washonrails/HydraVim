local notify = require('notify')
local path = require('plenary.path')

-- Configuração padrão
notify.setup({
	timer_interval = 10000,
	stages = "slide",
	render = "minimal",
	timeout = 2000,
	background_colour = "#FFFFFF",
	icons = {
		ERROR = "",
		WARN = "",
		INFO = "",
		DEBUG = "",
		TRACE = "✎",
	},
})
