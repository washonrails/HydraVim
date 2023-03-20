require("navigator").setup({
	debug = false, -- log output, set to true and log path: ~/.cache/nvim/gh.log
	width = 0.75, -- max width ratio (number of cols for the floating window) / (window width)
	height = 0.3, -- max list window height, 0.3 by default
	preview_height = 0.35, -- max height of preview windows
	border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }, -- border style, can be one of 'none', 'single', 'double',
	-- 'shadow', or a list of chars which defines the border
	on_attach = function(client, bufnr)
		-- your hook
	end,

	ts_fold = false, -- modified version of treesitter folding
	default_mapping = true, -- set to false if you will remap every key or if you using old version of nvim-
	keymaps = { { key = "gK", func = vim.lsp.declaration, desc = "declaration" } }, -- a list of key maps
	-- this kepmap gK will override "gD" mapping function declaration()  in default kepmap
	-- please check mapping.lua for all keymaps
	treesitter_analysis = true, -- treesitter variable context
	treesitter_navigation = true, -- bool|table false: use lsp to navigate between symbol ']r/[r', table: a list of
	--lang using TS navigation
	treesitter_analysis_max_num = 100, -- how many items to run treesitter analysis
	treesitter_analysis_condense = true, -- condense form for treesitter analysis
	-- this value prevent slow in large projects, e.g. found 100000 reference in a project
	transparency = 0, -- 0 ~ 100 blur the main window, 100: fully transparent, 0: opaque,  set to nil or 100 to disable it

	lsp_signature_help = true, -- if you would like to hook ray-x/lsp_signature plugin in navigator
	-- setup here. if it is nil, navigator will not init signature help
	signature_help_cfg = nil, -- if you would like to init ray-x/lsp_signature plugin in navigator, and pass in your own config to signature help
	icons = {
		-- Code action
		code_action_icon = "🏏", -- note: need terminal support, for those not support unicode, might crash
		-- Diagnostics
		diagnostic_head = "🐛",
		diagnostic_head_severity_1 = "🈲",
		-- refer to lua/navigator.lua for more icons setups
	},
	mason = true, -- set to true if you would like use the lsp installed by williamboman/mason
	lsp = {
		enable = true, -- skip lsp setup, and only use treesitter in navigator.
		-- Use this if you are not using LSP servers, and only want to enable treesitter support.
		-- If you only want to prevent navigator from touching your LSP server configs,
		-- use `disable_lsp = "all"` instead.
		-- If disabled, make sure add require('navigator.lspclient.mapping').setup({bufnr=bufnr, client=client}) in your
		-- own on_attach
		code_action = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
		code_lens_action = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
		document_highlight = true, -- LSP reference highlight,
		-- it might already supported by you setup, e.g. LunarVim
		format_on_save = true, -- {true|false} set to false to disasble lsp code format on save (if you are using prettier/efm/formater etc)
		table({ enable = { "lua", "go", "javascript", "typescript", "php" } }), -- to enable/disable specific language
		-- enable: a whitelist of language that will be formatted on save
		-- disable: a blacklist of language that will not be formatted on save
		-- function: function(bufnr) return true end to enable/disable lsp format on save
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
