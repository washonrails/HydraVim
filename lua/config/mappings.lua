local map = require("core.utils").Map

local local_mappings = {
	n = {
		{ "n", "<space>ft", "<CMD> :Format<CR>" },
		{ "<A-p>", "<CMD>ChatGPT<CR>" }, -- abre o chatgpt no modo normal pergunta e resposta
		{ "<A-o>", "<CMD<ChatGPTActAs<CR>" }, -- abre o chatgpt no modo de options
		{ "<A-e>", "<CMD>ChatGPTEditWithInstructions<CR>" }, -- abre o chatgpt no modo resposta direta sem explicacoes
		{ "<C-b>", "<CMD>SearchBoxMatchAll<CR>" }, -- abre o campo de pesquisa no arquivo
		{ "<C-Q>", "<ESC><CMD>q!<CR>" },
		{ "<C-s>", "<CMD>w<CR><CMD>echo 'Save '<CR>" },
		{ "<A-S-s>", "<CMD>NvimTreeClose<CR> <CMD>mksession! .hydra_session.vim<CR><CMD>echo 'Saved Session '<CR>" },
		{ "<A-S-l>", "<CMD>NvimTreeClose<CR> <CMD> :source .hydra_session.vim<CR><CMD>echo 'Loaded Session '<CR>" },
		{ "<A-j>", "<CMD>m .+1<CR>==" },
		{ "<A-k>", "<CMD>m .-2<CR>==" },
		{ "<A-n>", "<CMD>vsplit<CR>" },
		{ "<A-b>", "<CMD>split<CR>" },
		{ "<C-h>", "<C-w>h" },
		{ "<C-l>", "<C-w>l" }, -- move o cursor para a esquerda
		{ "<C-k>", "<C-w>k" }, -- move o cursor para baixo
		{ "<C-j>", "<C-w>j" }, -- move o cursor para cima
		{ "<C-z>", "u" }, -- desfaz alterações no modo normal
		{ "<C-v>", "p<ESC>" }, -- colar no modo normal
		{ "<C-a>", "ggVG" }, -- selecionar tudo no modo normal
		{
			"<space>lg",
			'<CMD>FloatermNew --width=120 --height=20 lazygit<CR> <CMD>:lua require("notify")("Opening Lazygit                                       ", "info")<CR>',
		},
		{
			"<space>ld",
			'<CMD>FloatermNew --width=120 --height=20 lazydocker<CR> <CMD>:lua require("notify")("Opening Lazydocker                                 🐳", "info")<CR>',
		},
		{ "<space>e", "<CMD>NvimTreeToggle <CR>" },
		{ "<TAB>", "<CMD>BufferLineCycleNext<CR>" }, -- selecionnar aba esuqerda
		{ "<S-TAB>", "<CMD>BufferLineCyclePrev<CR>" }, -- selecionar aba direita
		{ "<C-w>", "<CMD>BDelete this<CR>" }, -- fechar aba
		{ "<space>p", "<CMD>BufferLineTogglePin<CR>" }, -- fechar aba
		{ "<A-h>", "<CMD>NvimTreeClose<CR> <CMD>ToggleTerm size=15 direction=horizontal<CR>" }, -- abr o terminal
		{ "<A-m>", "<CMD>ToggleTerm size=45 direction=vertical<CR>" }, -- abr o terminal
		{ "<A-i>", "<CMD>ToggleTerm direction=float<CR>" }, -- abr o terminal
		{ "<space>i", "<CMD>FloatermNew<CR>" }, -- abr o terminal
		{ "K", "<cmd>lua vim.lsp.buf.hover()<cr>" },
		{ "gd", "<cmd>lua vim.lsp.buf.definition()<cr>" },
		{ "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>" },
		{ "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>" },
		{ "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>" },
		{ "gr", "<cmd>lua vim.lsp.buf.references()<cr>" },
		{ "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>" },
		{ "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>" },
		{ "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>" },
		{ "gl", "<cmd>lua vim.diagnostic.open_float()<cr>" },
		{ "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>" },
		{ "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>" },
		{ "ff", "<CMD>:Telescope find_files<cr>" },
		{ "fc", ":Telescope git_commits<cr>" },
		{ "fb", ":Telescope git_branches<cr>" },
		{ "fgs", ":Telescope git_status<cr>" },
		{ "<Esc><Esc>", ':let @/=""<CR>' },
		{ "<C-A-PageUp>", ":BufferLineMoveNext<CR>" },
		{ "<C-A-PageDown>", ":BufferLineMovePrev<CR>" },
		{ "<C-A-h>", ":vertical resize +3<CR>" },
		{ "<C-A-l>", ":vertical resize -3<CR>" },
		{ "<C-A-j>", ":resize -3<CR>" },
		{ "<C-A-k>", ":resize +3<CR>" },
		{ "<S-j>", "yyp" },
	},

	v = {
		{ "<C-Q>", "<ESC><CMD>q!<CR>" }, -- força saída no mode visual
		{ "<C-z>", "<ESC>u<ESC>gv=gv" }, -- desfaz alterações no modo visual
		{ "<C-c>", "y<ESC>" }, -- copia o texto o selecionado
		{ "<C-v>", "p<ESC>gv=gv" }, -- colar no modo visual
		{ "<C-a>", "ggVG" }, -- selecionar tudo no modo visual
		{ "<S-TAB>", "<gv" }, -- remove TAB do texto selecionado
		{ "<TAB>", ">gv" }, -- adiciona TAB do texto selecionado
	},

	i = {
		{ "<C-Q>", "<ESC><CMD>q!<CR>" }, -- força saída no mode inserir
		{ "<C-h>", "<Left>" },
		{ "<C-j>", "<Down>" },
		{ "<C-k>", "<Up>" },
		{ "<C-l>", "<Right>" },
	},

	t = {
		{ "<A-h>", "<CMD>ToggleTerm<CR>" }, -- fecha o terminal no modo terminal
		{ "<A-m>", "<CMD>ToggleTerm<CR>" }, -- fecha o terminal no modo terminal
		{ "<A-i>", "<CMD>ToggleTerm<CR>" }, -- fecha o terminal no modo terminal
	},
	x = {
		{ "<F4>", "<cmd>lua vim.lsp.buf.range_code_action()<cr>" },
	},
}

for type, mappings in pairs(local_mappings) do
	for _, maps in ipairs(mappings) do
		map(type, maps[1], maps[2])
	end
end
