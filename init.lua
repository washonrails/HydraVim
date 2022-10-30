vim.cmd([[
call plug#begin('~/.vim/vim.plug')

Plug 'akinsho/toggleterm.nvim', {'tag' : '*'} 					"  Terminal flutuante
Plug 'norcalli/nvim-colorizer.lua' 								" Exiba a cor do código da cor
Plug 'mg979/vim-visual-multi', {'branch': 'master'} 			" Multi cursor
Plug 'dundalek/lazy-lsp.nvim' 									" aut install lsp
Plug 'lewis6991/gitsigns.nvim'									" Indicadores git
Plug 'goolord/alpha-nvim'										" Tela inicial
Plug 'lukas-reineke/indent-blankline.nvim'						" Linhas de indentação
Plug 'nvim-lualine/lualine.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'} 				" Autocomplete
Plug 'neovim/nvim-lspconfig' 									" LPS https://www.jakewiesler.com/blog/getting-started-with-vim
Plug 'nvim-lua/plenary.nvim' 									" Dependênci do Telescope
Plug 'nvim-telescope/telescope.nvim' 							" Localiza arquivos
Plug 'kyazdani42/nvim-web-devicons' 							" Icones geral
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } 				" Gerencidor de abas
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 	" TSInstall C (dependência do Telescope)
Plug 'kien/rainbow_parentheses.vim' 							" Cor dos pares de () {} []
Plug 'Xuyuanp/nerdtree-git-plugin'								" Nerdtree git plugin
Plug 'nvim-tree/nvim-tree.lua'
Plug 'ryanoasis/vim-devicons' 									" Icons for plugins (NERDTree)
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 					" Color for icons
Plug 'sheerun/vim-polyglot' 									" Better sintax
Plug 'folke/trouble.nvim' 										" lista os erros do código
Plug 'dense-analysis/ale' 										" Icones do diagnostics
" Plug 'voldikss/vim-floaterm' 									" Terminal fluent

" temas --
Plug 'navarasu/onedark.nvim' 									" One dark mode
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
require ('plugins.rainbow_parentheses')
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
require ('plugins.ale_sign')

-- temas
require ('theme.theme')
