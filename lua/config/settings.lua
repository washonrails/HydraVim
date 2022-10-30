local o = vim.o
local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- key
g.mapleader = ' '
g.maplocalleader = ' '

-- definições básicas
opt.number = true						-- númeração das linhas
opt.mouse = 'a'							-- ativa mouse
opt.tabstop = 4							-- quantidade de espaços
opt.shiftwidth = 4						-- Quantidade de caracteres que o Neovim usará para recuar uma linha
opt.smartindent = true					-- auto indentação do code
o.syntax = 'on'							-- ativa a sintaxe
o.undofile = true						-- ativa o desfazer

-- definições básicas - vimscript
cmd [[ set cursorline ]]				-- destaca a linha atual do cursor
cmd [[ set noshowmode ]]				-- oculta o modo na barra inferior
cmd [[ set clipboard+=unnamedplus ]]	-- suporte à área de tranferência

-- configurações split - melhoria
o.splitright = true
o.splitbelow = true

-- tema
opt.termguicolors = true				--  melhor suporte a cores

-- pesquisa
o.ignorecase = true						-- ignorar letras maiúsculas ao executar uma pesquisa
o.smartcase = true
