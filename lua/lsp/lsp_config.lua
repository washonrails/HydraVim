local present_l, mason = pcall(require, 'mason')
local present_m, mason_lspconfig = pcall(require, 'mason-lspconfig')
local present, lspconfig = pcall(require, "lspconfig")

if not (present and present_l and present_m) then
    return
end

vim.diagnostic.config({
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = false,
  virtual_text = false,
})

local signs = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Info = " "
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {'lua_ls'},
  automatic_installation = true,
})

mason_lspconfig.setup_handlers({
  function(server)
    lspconfig[server].setup({})
  end,
})
