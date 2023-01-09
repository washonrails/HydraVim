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

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- vim.cmd([[
--   augroup packer_user_config
-- 	autocmd!
-- 	autocmd BufWritePost packer.lua source <afile> | PackerCompile
-- 	autocmd BufWritePost packer.lua source <afile> | PackerInstall
--   augroup end
-- ]])

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

packer.init({
	-- auto_clean = true,
	-- compile_on_sync = true,
	-- auto_reload_compiled = true,
    git = { clone_timeout = 6000 },
	display = {
      working_sym = "ﲊ",
      error_sym = "✗ ",
      done_sym = " ",
      removed_sym = " ",
      moved_sym = "",
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup({
	function(use)
	use 'wbthomason/packer.nvim'
	use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
	use 'kazhala/close-buffers.nvim'
	use 'terrortylor/nvim-comment'
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-tree/nvim-tree.lua'
	use 'neovim/nvim-lspconfig'
	use 'nvim-lualine/lualine.nvim'
	use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
	use 'lewis6991/gitsigns.nvim'
	use 'sheerun/vim-polyglot'
	use {'akinsho/bufferline.nvim', tag = 'v3.*' }
	use {'akinsho/toggleterm.nvim', tag = '*'}
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0' }
	use 'nvim-tree/nvim-web-devicons'
	use 'goolord/alpha-nvim'
	use 'nvim-lua/plenary.nvim'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'ryanoasis/vim-devicons'
	use 'honza/vim-snippets'
	use 'mg979/vim-visual-multi'
	use 'norcalli/nvim-colorizer.lua'
	use 'folke/which-key.nvim'
	use 'folke/zen-mode.nvim'

	-- temas --
	use {'catppuccin/nvim', as = 'catppuccin' }
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
