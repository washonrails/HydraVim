local nvim_lsp = require('lspconfig')
local servers = {'ccls','clangd', 'pyright', 'tsserver', "html", "gopls", "jsonls", "rust_analyzer", "sumneko_lua", "vimls", "cssls", "jsonls"}

-- local servers = {
-- 	ccls = {},
-- 	clangd = {},
-- 	gopls = {},
-- 	html = {},
-- 	jsonls = {},
-- 	pyright = {},
-- 	rust_analyzer = {},
-- 	sumneko_lua = {},
-- 	tsserver = {},
-- 	vimls = {},
-- }

vim.diagnostic.config({
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = false,
  virtual_text = true,
  virtual_text = { prefix = '■',} -- Could be '●', '▎', 'x'
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local opts = { noremap=true, silent=true }

  -- our first remap
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
end

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach
    }
end

--  
