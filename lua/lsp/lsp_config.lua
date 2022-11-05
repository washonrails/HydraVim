local nvim_lsp = require('lspconfig')
local servers = {'ccls','clangd', 'pyright', 'tsserver', "html", "gopls", "jsonls", "rust_analyzer", "sumneko_lua", "vimls", "cssls", "jsonls"}

vim.diagnostic.config({
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = false,
  virtual_text = false,
--   virtual_text = { prefix = '■',} -- Could be '●', '▎', 'x'
})

-- function PrintDiagnostics(opts, bufnr, line_nr, client_id)
--   bufnr = bufnr or 0
--   line_nr = line_nr or (vim.api.nvim_win_get_cursor(0)[1] - 1)
--   opts = opts or {['lnum'] = line_nr}
-- 
--   local line_diagnostics = vim.diagnostic.get(bufnr, opts)
--   if vim.tbl_isempty(line_diagnostics) then return end
-- 
--   local diagnostic_message = ""
--   for i, diagnostic in ipairs(line_diagnostics) do
--     diagnostic_message = diagnostic_message .. string.format("LSP: %s", diagnostic.message or "")
--     print(diagnostic_message)
--     if i ~= #line_diagnostics then
--       diagnostic_message = diagnostic_message .. "\n"
--     end
--   end
--   vim.api.nvim_echo({{diagnostic_message, "Normal"}}, false, {})
-- end
-- vim.cmd [[ autocmd! CursorHold * lua PrintDiagnostics() ]]

vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]

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
