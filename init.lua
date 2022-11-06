-- plugins
require ('plugins.vim_plug')
-- require ('plugins.packer')

-- config
require ('config.autosave')
require ('config.comment')
require ('config.mappings')
require ('config.settings')

-- lsp
require ('lsp.coc')
require ('lsp.vim_treesitter')
require ('lsp.lsp_config')

-- plugins config
require ('plugins.alpha')
require ('plugins.buffer')
require ('plugins.colorizer')
require ('plugins.gitsigns')
require ('plugins.indent_line')
require ('plugins.lualine')
require ('plugins.nvim_tree')
require ('plugins.telescope')
require ('plugins.toggleterm')
require ('plugins.which_key')


-- temas
require ('theme.theme')
