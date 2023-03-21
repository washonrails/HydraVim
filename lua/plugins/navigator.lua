require("navigator").setup({
	debug = false, -- log output, set to true and log path: ~/.cache/nvim/gh.log
	width = 0.75, -- max width ratio (number of cols for the floating window) / (window width)
	height = 0.3, -- max list window height, 0.3 by default
	preview_height = 0.35, -- max height of preview windows
	border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }, -- border style, can be one of 'none', 'single', 'double',

	mason = true, -- set to true if you would like use the lsp installed by williamboman/mason
	lsp = {
		enable = true, -- skip lsp setup, and only use treesitter in navigator.
		code_action = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
		code_lens_action = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
		document_highlight = true, -- LSP reference highlight,
		format_on_save = true, -- {true|false} set to false to disasble lsp code format on save (if you are using prettier/efm/formater etc)
		format_options = { async = false }, -- async: disable by default, the option used in vim.lsp.buf.format({async={true|false}, name = 'xxx'})
		disable_format_cap = { "sqls", "lua_ls", "gopls" }, -- a list of lsp disable format capacity (e.g. if you using efm or vim-codeformat etc), empty {} by default
		diagnostic = {
			underline = true,
			virtual_text = true, -- show virtual for diagnostic message
			update_in_insert = false, -- update diagnostic message in insert mode
		},

		hover = {
			enable = true,
			keymap = {
				["<C-k>"] = {
					go = function()
						local w = vim.fn.expand("<cWORD>")
						vim.cmd("GoDoc " .. w)
					end,
					default = function()
						local w = vim.fn.expand("<cWORD>")
						vim.lsp.buf.workspace_symbol(w)
					end,
				},
			},

			diagnostic_scrollbar_sign = { "▃", "▆", "█" }, -- experimental:  diagnostic status in scroll bar area; set to false to disable the diagnostic sign,
			--                for other style, set to {'╍', 'ﮆ'} or {'-', '='}
			diagnostic_virtual_text = true, -- show virtual for diagnostic message
			diagnostic_update_in_insert = false, -- update diagnostic message in insert mode
			disply_diagnostic_qf = true, -- always show quickfix if there are diagnostic errors, set to false if you want to ignore it
			lua_ls = {
				sumneko_root_path = vim.fn.expand("$HOME") .. "/github/sumneko/lua-language-server",
				sumneko_binary = vim.fn.expand("$HOME")
					.. "/github/sumneko/lua-language-server/bin/macOS/lua-language-server",
			},
		},
	},
})
