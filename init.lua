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
Plug 'SolarVim/indent-blankline.nvim'
Plug 'SolarVim/vim-devicons'
Plug 'SolarVim/vim-visual-multi'
Plug 'SolarVim/nvim-colorizer.lua'
Plug 'SolarVim/indent-blankline.nvim'
Plug 'SolarVim/vim-snippets'

" temas --
Plug 'navarasu/onedark.nvim'
Plug 'tiagovla/tokyodark.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'luisiacc/gruvbox-baby'
Plug 'rafamadriz/neon'
Plug 'shaunsingh/nord.nvim'
Plug 'rmehri01/onenord.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" opt
" Plug 'makerj/vim-pdf'
" Plug 'shaunsingh/oxocarbon.nvim', { 'do': './install.sh' }
" Plug 'andweeb/presence.nvim'

call plug#end()
]])

-- opt
-- require('plugins.presence')

-- config
require ('config.settings')
require ('config.mappings')
require ('config.comment')
require ('config.autosave')

-- plugins config
require ('plugins.nvim_tree')
require ('plugins.telescope')
require ('plugins.lualine')
require ('plugins.indent_line')
require ('plugins.buffer')
require ('plugins.alpha')
require ('plugins.gitsigns')
require ('plugins.colorizer')
require ('plugins.toggleterm')

-- lsp
require ('lsp.coc_settings')
require ('lsp.vim_treesitter')
require ('lsp.lsp_config')

-- temas
require ('theme.theme')
