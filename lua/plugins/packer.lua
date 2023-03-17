local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

local present, packer = pcall(require, "packer")
if not present then
	return
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

packer.init({
    git = { clone_timeout = 6000 },
	display = {
      working_sym = " ",
      error_sym = " ",
      done_sym = " ",
      removed_sym = "﫧",
      moved_sym = "",
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup({
	function(use)
	use {'wbthomason/packer.nvim'}
	use {
		'iamcco/markdown-preview.nvim',
		run = 'cd app && yarn install',
		ft = {'markdown'},
		-- cmd = 'MarkdownPreview'
	}

	use {'kazhala/close-buffers.nvim'}
	use {
		'terrortylor/nvim-comment',
		keys = {"v"},
		event = {"ModeChanged"},
		config = function ()
			require('plugins.comment')
		end
		}

    use {
        'nvim-treesitter/nvim-treesitter',
		config = function()
			require('lsp.treesitter')
		end,
		run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

	use {
		'nvim-tree/nvim-tree.lua',
		ft = "alpha",
		cmd = { "NvimTreeToggle", "NvimTreeFocus"},
		config = function()
			require('plugins.nvim_tree')
		end
		}
	
	use {
		'neovim/nvim-lspconfig',
		config = function()
			require('lsp.lsp_config')
		end
	}

	use {
		'nvim-lualine/lualine.nvim',
		config = function()
			require('plugins.lualine')
		end
		}

	use {
		'neoclide/coc.nvim',
		branch = 'master',
		run = 'yarn install --frozen-lockfile',
		event = {"UIEnter"},
		config = function()
			require("lsp.coc")
		end
	}

	use {
		'lewis6991/gitsigns.nvim',
		event = {'BufReadPre', 'BufWritePre'},
		config = function()
			require('plugins.gitsigns')
		end
	}
	use {'sheerun/vim-polyglot'}
	
	use {
		'akinsho/bufferline.nvim',
		tag = 'v3.*',
		event = {'BufReadPre'},
		config = function()
			require('plugins.buffer')
		end
		}
	
	use {
		'akinsho/toggleterm.nvim',
		tag = '*',
		event = {"UIEnter"},
		-- keys = { "<A-h>", "<A-m>", "<A-i>", "<leader>i", "<leader>"},
		-- cmd = {":ToggleTerm"},
		config = function()
			require('plugins.toggleterm')
		end
	}

	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		cmd = "Telescope",
		config = function()
			require('plugins.telescope')
		end
	}

	use {'nvim-tree/nvim-web-devicons'}
	use {
		'goolord/alpha-nvim',
		config = function()
			require('plugins.alpha')
		end
	}

	use {'nvim-lua/plenary.nvim'}
	use {
		'lukas-reineke/indent-blankline.nvim',
		event = {'BufReadPre', 'BufNewFile'},
		config = function()
			require('plugins.indent_line')
		end
	}

	use {'ryanoasis/vim-devicons'}

	use {'honza/vim-snippets',}
	
	use {
		'mg979/vim-visual-multi',
		config = function ()
			require('plugins.vim_multi')
		end
	}

	use {
		'norcalli/nvim-colorizer.lua',
		config = function ()
			require('plugins.colorizer')
		end
	}

	use {
		'folke/which-key.nvim',
		keys = "<leader>",
		after = "toggleterm.nvim",
		config = function()
			require('plugins.which_key')
		end
	}

	use {'folke/zen-mode.nvim'}

	-- temas --
	use {'catppuccin/nvim', as = 'catppuccin', run = ":colorscheme catppuccin-mocha"}
	use 'projekt0n/github-nvim-theme'
	use 'navarasu/onedark.nvim'
	use 'tiagovla/tokyodark.nvim'
	use 'folke/tokyonight.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use 'luisiacc/gruvbox-baby'
	use 'rafamadriz/neon'
	use 'shaunsingh/nord.nvim'
    use 'rmehri01/onenord.nvim'

	if PACKER_BOOTSTRAP then
		packer.sync()
	end
end})
