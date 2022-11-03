local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	
	use 'wbthomason/packer.nvim'
	use 'SolarVim/nvim-treesitter'
	use 'SolarVim/nvim-tree.lua'
	use 'SolarVim/nvim-lspconfig'
	use 'SolarVim/lualine.nvim'
	use {'SolarVim/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
	use 'SolarVim/gitsigns.nvim'
	use 'SolarVim/vim-polyglot'
	use 'SolarVim/bufferline.nvim'
	use 'SolarVim/toggleterm.nvim'
	use 'SolarVim/telescope.nvim'
	use 'SolarVim/nvim-web-devicons'
	use 'SolarVim/lazy-lsp.nvim'
	use 'SolarVim/alpha-nvim'
	use 'SolarVim/plenary.nvim'
	use 'SolarVim/indent-blankline.nvim'
	use 'SolarVim/vim-devicons'
	use 'SolarVim/vim-visual-multi'
	use 'SolarVim/nvim-colorizer.lua'
	use 'SolarVim/vim-snippets'

	-- temas
	use 'navarasu/onedark.nvim'
	use 'tiagovla/tokyodark.nvim'
	use 'folke/tokyonight.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use 'luisiacc/gruvbox-baby'
	use 'rafamadriz/neon'
	use 'shaunsingh/nord.nvim'
	use 'rmehri01/onenord.nvim'
	use { "catppuccin/nvim", as = "catppuccin" }
	use 'JoosepAlviste/palenightfall.nvim'
	use 'projekt0n/github-nvim-theme'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
