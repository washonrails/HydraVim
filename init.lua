vim.cmd([[
call plug#begin('~/.vim/vim.plug')

Plug 'SolarVim/nvim-treesitter'
Plug 'SolarVim/nvim-tree.lua'
Plug 'SolarVim/nvim-lspconfig'
Plug 'SolarVim/lualine.nvim'
Plug 'SolarVim/coc.nvim'
Plug 'SolarVim/gitsigns.nvim'
Plug 'SolarVim/vim-polyglot'
Plug 'SolarVim/bufferline.nvim'
Plug 'SolarVim/toggleterm.nvim'
Plug 'SolarVim/telescope.nvim'
Plug 'SolarVim/nvim-web-devicons'
Plug 'SolarVim/lazy-lsp.nvim'
Plug 'SolarVim/alpha-nvim'
Plug 'SolarVim/plenary.nvim'
Plug 'SolarVim/trouble.nvim'
Plug 'SolarVim/indent-blankline.nvim'
Plug 'SolarVim/vim-devicons'
Plug 'SolarVim/vim-visual-multi'
Plug 'SolarVim/nvim-colorizer.lua'

" temas --
Plug 'navarasu/onedark.nvim'
Plug 'tiagovla/tokyodark.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'luisiacc/gruvbox-baby'
Plug 'rafamadriz/neon'
Plug 'shaunsingh/nord.nvim'
Plug 'rmehri01/onenord.nvim'

call plug#end()
]])

-- config
require ('config.settings')
require ('config.mappings')
require ('config.comment')

-- plugins config
require ('plugins.settings')
require ('plugins.nvim_tree')
require ('plugins.telescope')
require ('plugins.lualine')
require ('plugins.icons_unicode')
require ('plugins.indent_blankline')
require ('plugins.buffer')
require ('plugins.alpha')
require ('plugins.gitsigns')
require ('plugins.colorizer')
require ('plugins.toggleterm')
require ('plugins.trouble')

-- lsp
require ('plugins.coc_settings')
require ('plugins.vim_treesitter')
require ('plugins.lsp_config')

-- temas
require ('theme.theme')
