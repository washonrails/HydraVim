local present, wk = pcall(require, "which-key")

if not present then
	return
end

local present2, tm = pcall(require, "toggleterm.terminal") -- NOTE: Still using toggleterm

if not present2 then
	return
end

wk.setup({
	plugins = {
		marks = false,
		registers = false,
		spelling = {
			enabled = false,
			suggestions = 20,
		},
		presets = {
			operators = true,
			motions = true,
			text_objects = true,
			windows = true,
			nav = true,
			z = true,
			g = true,
		},
	},
	operators = { gc = "Comments" },
	icons = {
		breadcrumb = "»",
		separator = "",
		group = "",
	},
	window = {
		border = "rounded", -- none, single, double, shadow
		border_chars = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
		border_width = 1,
		position = "bottom",
		margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
		padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
		winblend = 0,
	},
	layout = {
		height = { min = 4, max = 25 },
		width = { min = 20, max = 50 },
		spacing = 10,
		align = "center",
	},
	ignore_missing = true,
	hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
	show_help = false,
	show_keys = false,
	triggers = "<space>wk",
	triggers_blacklist = {
		i = { "j", "k" },
		v = { "j", "k" },
	},
	disable = {
		buftypes = {},
		filetypes = { "TelescopePrompt" },
	},
})

local Terminal = require("toggleterm.terminal").Terminal
local toggle_float = function()
	local float = Terminal:new({ direction = "float" })
	return float:toggle()
end

local mappings = {
	u = { ":UpdateSync<CR>", " Update" },
	q = { ":q<cr>", " Quit" },
	H = {
		"<CMD>NvimTreeClose<CR><CMD>BDelete all<CR><CMD>Alpha<CR><CMD>BDelete all<CR><CMD>echo' Home'<CR>",
		" Home",
	},
	c = {
		name = "ךּ COC",
		e = { ":CocList extensions<cr>", "擄 Extensions" },
		u = { ":CocUpdate<cr>", " Update" },
	},
	w = { ":w<cr>", " Save" },
	e = { ":NvimTreeToggle<cr>", "פּ Tree" },
	s = { ":e ~/.config/nvim/init.lua<cr>", " Settings" },
	r = { ":Telescope live_grep<cr>", " Live Grep" },
	-- u = { ":TermExec size=10 direction=float cmd='sh ~/.config/nvim/script/update.sh && exit'<CR>", " Update" },
	t = {
		name = " Terminal",
		t = { ":ToggleTerm<cr>", "Horizontal" },
		m = { ":ToggleTerm size=45 direction=vertical<CR>", "Vertical" },
		f = { toggle_float, "Floating" },
	},
	g = {
		name = " Git",
		c = { ":Telescope git_commits<cr>", " Commits" },
		b = { ":Telescope git_branches<cr>", " Branches" },
		s = { ":Telescope git_status<cr>", " Status" },
	},
	i = {
		name = " UI",
		i = { "<CMD>IndentBlanklineToggle<CR>", " Indent Line" },
	},
	f = {
		name = " Files",
		n = { ":ene <BAR> startinsert <CR>", " New file" },
		f = { ":Telescope find_files<cr>", " Find Files" },
		r = { ":Telescope oldfiles<CR>", " Recent" },
	},
	l = {
		name = " LSP",
		i = { ":LspInfo<cr>", " LSP Info" },
		r = { ":LspRestart<cr>", "ﰇ LSP Restart" },
		b = { ":LspStop<cr>", " LSP Stop" },
		s = { ":LspStart<cr>", " LSP Start" },
	},
	z = { ":ZenMode<cr>", " Zen Mode" },
	p = {
		name = " Plugins",
		r = { ":PackerClean<cr>", "ﮁ Remove Unused Plugins" },
		e = { ":PackerSync<cr>", "痢 Plugins Sync" },
		c = { ":PackerCompile<cr>", " Plugins Compile" },
		i = { ":PackerInstall<cr>", " Plugins Install" },
		s = { ":PackerStatus<cr>", " Plugins Status" },
		u = { ":PackerUpdate<cr>", " Plugins Update" },
	},
}

local opts = { prefix = "<space>" }
wk.register(mappings, opts)
