local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.cmd("set rtp+=" .. lazypath)

local lazy = require("lazy")
lazy.setup({
	-- Define as opções de configuração

	"MunifTanjim/nui.nvim",
	"folke/neodev.nvim",
	"kazhala/close-buffers.nvim",
	"sheerun/vim-polyglot",
	"nvim-tree/nvim-web-devicons",
	"nvim-lua/plenary.nvim",
	"ryanoasis/vim-devicons",
	"honza/vim-snippets",
	"nvim-lua/popup.nvim",
	"sar/illuminate.nvim",
	"sindrets/diffview.nvim",
	"voldikss/vim-translator",

	{ "washonrails/mpv.nvim",         config = true },

	{
		"voldikss/vim-floaterm",
		config = function()
			require("plugins.floaterm")
		end,
	},

	{
		"VonHeikemen/searchbox.nvim",
		config = function()
			require("plugins.search_box")
		end,
	},

	{
		"rcarriga/nvim-notify",
		config = function()
			require("plugins.notify")
		end,
	},

	{
		"MarcHamamji/runner.nvim",
		config = function()
			require("plugins.runner")
		end,
	},

	{
		"dbinagi/nomodoro",
		config = function()
			require("plugins.nomodoro")
		end,
	},

	{
		"mhartington/formatter.nvim",
		event = "BufWritePost",
		config = function()
			require("plugins.formatter")
		end,
	},

	-- LSP REQUIRES -- DONT TOUCH THIS YOUR MOTHERFUCKER !!!
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"windwp/nvim-autopairs",

	"SirVer/ultisnips",
	"quangnguyen30192/cmp-nvim-ultisnips",
	"rafamadriz/friendly-snippets",
	{
		"hrsh7th/nvim-cmp",
		config = function()
			require("lsp.cmp")
		end,
	},

	{ "folke/neoconf.nvim",           cmd = "Neoconf" },
	{ "iamcco/markdown-preview.nvim", run = "cd app && yarn install", ft = { "markdown" } },

	{
		"terrortylor/nvim-comment",
		keys = { "v" },
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("plugins.comment")
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("lsp.treesitter")
		end,
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		ft = "veil",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		config = function()
			require("plugins.nvim_tree")
		end,
	},

	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("lsp.lsp_config")
		end,
	},

	{
		"feline-nvim/feline.nvim",
		branch = "0.5-compat",
		config = function()
			require("plugins.feline")
		end
	},

	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufWritePre" },
		config = function()
			require("plugins.gitsigns")
		end,
	},

	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},

	{
		"akinsho/bufferline.nvim",
		event = { "BufReadPre" },
		config = function()
			require("plugins.buffer")
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		config = function()
			require("plugins.telescope")
		end,
	},

	{
		"willothy/veil.nvim",
		config = true,
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("plugins.indent_line")
		end,
	},

	{
		"mg979/vim-visual-multi",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("plugins.vim_multi")
		end,
	},

	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("plugins.colorizer")
		end,
	},

	{
		"folke/which-key.nvim",
		keys = "<leader>",
		config = function()
			require("plugins.which_key")
		end,
	},

	-- Themes
	{ "catppuccin/nvim", as = "catppuccin", run = ":colorscheme catppuccin-mocha" },
	"tiagovla/tokyodark.nvim",
	"folke/tokyonight.nvim",
	"ellisonleao/gruvbox.nvim",
	"lunarvim/horizon.nvim",
	"EdenEast/nightfox.nvim",
	"rebelot/kanagawa.nvim",
	{
		"ray-x/starry.nvim",
		setup = function()
			vim.g.starry_italic_comments = true
		end,
	},

	{
		"olivercederborg/poimandres.nvim",
		config = function()
			require("poimandres").setup({})
		end,
	},

	{
		"ray-x/guihua.lua",
		run = "cd lua/fzy && make",
		config = function()
			require("plugins.guihua")
		end,
	},

	{
		"ray-x/navigator.lua",
		run = "cd lua/fzy && make",
		config = function()
			require("plugins.navigator")
		end,
	},

	{
		"jackMort/ChatGPT.nvim",
		config = function()
			require("plugins.chatgpt")
		end,
	},

	{
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("plugins.todo-comments")
		end,
	},

	{
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("plugins.noice")
		end,
	},
})

local ui = {
	size = { width = 0.8, height = 0.8 },
	wrap = true,
	border = "single",
	icons = {
		cmd = " ",
		config = "",
		event = "",
		ft = " ",
		init = " ",
		import = " ",
		keys = " ",
		lazy = "󰒲 ",
		loaded = "●",
		not_loaded = "○",
		plugin = " ",
		runtime = " ",
		source = " ",
		start = "",
		task = "✔ ",
		list = {
			"●",
			"➜",
			"★",
			"‒",
		},
	},
}
