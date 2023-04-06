vim.g.fluoromachine_italic_comments = true
vim.g.fluoromachine_italic_functions = true
vim.g.fluoromachine_italic_keywords = false
vim.g.fluoromachine_italic_variables = false

local fluoromachine = require 'fluoromachine'

fluoromachine:setup {
	config = {
		transparent = false,
		brightness = 0.15,
		glow = true,
	},
	colors = {
		dracula = {
			green = '#50fa7b'
		}
	},
	highlights = function(colors, darken, lighten, blend)
		local alpha = fluoromachine.config.brightness

		return {
			['@tag'] = { fg = colors.dracula.green, bg = blend(colors.dracula.green, colors.bg, alpha) }
		}
	end,
}
