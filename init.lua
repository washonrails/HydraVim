require ('plugins.vim-plug')
-- require ('plugins.packer')

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
require ('plugins.which_key')
-- require('plugins.presence')

-- lsp
require ('lsp.coc_settings')
require ('lsp.vim_treesitter')
require ('lsp.lsp_config')

-- temas
require ('theme.theme')
