vim.cmd([[
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/vim.plug')
    Plug 'SolarVim/nvim-treesitter'
    Plug 'SolarVim/nvim-tree.lua'
    Plug 'SolarVim/nvim-lspconfig'
    Plug 'SolarVim/lualine.nvim'
    Plug 'SolarVim/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
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

	Plug 'folke/which-key.nvim'
	Plug 'folke/zen-mode.nvim'
	" temas --
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
	Plug 'projekt0n/github-nvim-theme'
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
