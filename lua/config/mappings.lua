local vc = vim.cmd
local function map(m, k, v, i)
    vim.keymap.set(m, k, v, i, { silent = true })
end

-- forçar saída
map('n', '<C-Q>', '<ESC><CMD>q!<CR>')						-- força saída no mode normal
map('v', '<C-Q>', '<ESC><CMD>q!<CR>')						-- força saída no mode visual	
map('i', '<C-Q>', '<ESC><CMD>q!<CR>')						-- força saída no mode inserir

-- salvar alterações
map('n', '<C-s>', "<CMD>w<CR><CMD>echo 'Save '<CR>") 	-- salva alerações no modo normal

map('n', '<A-S-s>', "<CMD>NvimTreeClose<CR> <CMD>mksession! .hydra_session.vim<CR><CMD>echo 'Saved Session '<CR>") -- salva a sessao atual
map('n', '<A-S-l>', "<CMD>NvimTreeClose<CR> <CMD> :source .hydra_session.vim<CR><CMD>echo 'Loaded Session '<CR>") -- abre a ultima sessao salva.

-- mover linhas
map('n', '<A-j>', '<CMD>m .+1<CR>==')						-- move a linha atual para baixo no modo normal
map('n', '<A-k>', '<CMD>m .-2<CR>==')						-- move a linha atual para cima no modo normal

vc [[ vnoremap <A-j> :m '>+1<CR>gv=gv ]]					-- move a linha atual para baixo no modo visual
vc [[ vnoremap <A-k> :m '<-2<CR>gv=gv ]]					-- move a linha atual para cima no modo visual

-- copiar para cima/baixo
vc [[ nnoremap <S-j> yyp ]]									-- copia para baixo no modo normal
vc [[ nnoremap <S-k> yyp :m .-2<CR>== ]]					-- copia para cima no modo normal
vc [[ vnoremap <S-j> <ESC> yyp :m .+0<CR>v ]]				-- copia para baixo no modo visual
vc [[ vnoremap <S-k> <ESC> yyp:m .-1<CR>gv=gv ]]			-- copia para cima no modo visual

-- dividir a tela - split mode
map('n', '<A-n>', '<CMD>vsplit<CR>')						-- divide o buffer verticalmente 
map('n', '<A-b>', '<CMD>split<CR>')							-- divide o buffer horizontalmente

-- split resize
vc [[ nnoremap <silent> <C-A-h> :vertical resize +3<CR> ]]	-- redimenciona o buffer vertical para a esquerda
vc [[ nnoremap <silent> <C-A-l> :vertical resize -3<CR> ]]	-- redimendiona o buffer vertical para a direita
vc [[ nnoremap <silent> <C-A-j> :resize -3<CR> ]]			-- redimensiona o buffer horizontal para baixo
vc [[ nnoremap <silent> <C-A-k> :resize +3<CR> ]]			-- redimensiona o buffer horizontal para cima

-- navegação
map('n', '<C-h>', '<C-w>h')									-- move o cursor para a direita
map('n', '<C-l>', '<C-w>l')									-- move o cursor para a esquerda
map('n', '<C-k>', '<C-w>k')									-- move o cursor para baixo
map('n', '<C-j>', '<C-w>j')									-- move o cursor para cima

-- desfazer
map('n', '<C-z>', 'u')										-- desfaz alterações no modo normal
map('v', '<C-z>', '<ESC>u<ESC>gv=gv')						-- desfaz alterações no modo visual

-- copiar e colar
map('v', '<C-c>', 'y<ESC>')									-- copia o texto o selecionado
map('v', '<C-v>', 'p<ESC>gv=gv')							-- colar no modo visual
map('n', '<C-v>', 'p<ESC>')									-- colar no modo normal

-- selecionar tudo
map('v', '<C-a>', 'ggVG')									-- selecionar tudo no modo visual
map('n', '<C-a>', 'ggVG')									-- selecionar tudo no modo normal

-- snippets
vc([[xmap <leader>sp  <Plug>(coc-convert-snippet)]])

-- lazygit
map('n', '<leader>lg', "<CMD>TermExec size=10 direction=float cmd='lazygit && exit'<CR>")

-- NvimTree
map('n', '<leader>e', '<CMD>NvimTreeToggle <CR>')			-- selecionar tudo no modo normal

-- add/rm TAB em texto
map('v', '<TAB>', '>gv')									-- adiciona TAB do texto selecionado
map('v', '<S-TAB>', '<gv')									-- remove TAB do texto selecionado

-- abas
map('n', '<TAB>', '<CMD>BufferLineCycleNext<CR>')			-- selecionnar aba esuqerda
map('n', '<S-TAB>', '<CMD>BufferLineCyclePrev<CR>')			-- selecionar aba direita
map('n', '<C-w>', '<CMD>BDelete this<CR>')					-- fechar aba
map('n', '<leader>p', '<CMD>BufferLineTogglePin<CR>')		-- fechar aba

-- terminal
map('n', '<A-h>', '<CMD>NvimTreeClose<CR> <CMD>ToggleTerm size=15 direction=horizontal<CR>') 	-- abr o terminal
map('n', '<A-m>', '<CMD>ToggleTerm size=45 direction=vertical<CR>')								-- abr o terminal
map('n', '<A-i>', '<CMD>ToggleTerm direction=float<CR>')										-- abr o terminal
map('n', '<leader>i', '<CMD>ToggleTerm direction=float<CR>')									-- abr o terminal

map('t', '<A-h>', '<CMD>ToggleTerm<CR>')														-- fecha o terminal no modo terminal
map('t', '<A-m>', '<CMD>ToggleTerm<CR>')														-- fecha o terminal no modo terminal
map('t', '<A-i>', '<CMD>ToggleTerm<CR>')														-- fecha o terminal no modo terminal

-- ranger
map('n', '<leader>rr', "<CMD>TermExec size=10 direction=float cmd='ranger && exit'<CR>")		-- abre o Ranger

-- HydraVim script
map('n', '<leader>th', "<CMD>TermExec size=10 direction=float cmd='sh ~/.config/nvim/lua/theme/theme.sh && exit'<CR>") 	-- HydarVim theme
map('n', '<leader>uf', "<CMD>TermExec size=10 direction=float cmd='sh ~/.config/nvim/script/fix_list.sh'<CR>") 	 		-- HydarVim fix_list

-- atalho da abas
vc ([[
nnoremap <silent><C-A-PageUp> :BufferLineMoveNext<CR>
nnoremap <silent><C-A-PageDown> :BufferLineMovePrev<CR>
" nnoremap <silent><C-w> :BufferLinePickClose<CR>
" nnoremap <silent><C-w> :BufferLinePickClose<CR>
]])

local present, telescope = pcall(require, "telescope")

if present then
    local builtin = require('telescope.builtin')
    map('n', '<leader>ff', builtin.find_files, {})
    map('n', '<leader>fg', builtin.live_grep, {})
    map('n', '<leader>fb', builtin.buffers, {})
    map('n', '<leader>fh', builtin.help_tags, {})
    map('n', '<leader>gc', builtin.git_commits, {})
    map('n', '<leader>gb', builtin.git_branches, {})
    map('n', '<leader>gt', builtin.git_status, {})
end
