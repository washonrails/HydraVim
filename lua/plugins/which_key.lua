local wk = require("which-key")
wk.setup {
  plugins = {
    marks = false,
    registers = false,
    spelling = {
      enabled = false,
      suggestions = 20,
    },
    presets = {
      operators = true,
	  motions = true,
      text_objects = true,
      windows = true,
      nav = true,
      z = true,
      g = true,
    },
  },
  operators = { gc = "Comments" },
  key_labels = {
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»",
    separator = "➜",
    group = "+",
  },
  popup_mappings = {
    scroll_down = '<c-d>',
    scroll_up = '<c-u>',
  },
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom",
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0
  },
  layout = {
    height = { min = 4, max = 25 },
    width = { min = 20, max = 50 },
    spacing = 3,
    align = "left",
  },
  ignore_missing = true,
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "},
  show_help = false,
  show_keys = false,
  triggers = "auto",
  triggers_blacklist = {
    i = { "j", "k" },
    v = { "j", "k" },
  },
  disable = {
    buftypes = {},
    filetypes = { "TelescopePrompt", "NvimTree"},
  },
}

local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({ direction = "float" })
  return float:toggle()
end
local toggle_lazygit = function()
  local lazygit = Terminal:new({ cmd = 'lazygit', direction = "float" })
  return lazygit:toggle()
end

local mappings = {
  q = { ":q<cr>", "Quit" },
  w = { ":w<cr>", "Save" },
  e = { ":NvimTreeToggle<cr>", "Tree" },
  E = { ":e ~/.config/nvim/init.lua<cr>", "Settings" },
  r = { ":Telescope live_grep<cr>", "Live Grep" },
  u = { ":TermExec size=10 direction=float cmd='sh ~/.config/nvim/script/update.sh && exit'<CR>", "Update" },
  t = {
    t = { ":ToggleTerm<cr>", "Horizontal" },
    m = { ":ToggleTerm size=45 direction=vertical<CR>", "Vertical" },
    f = { toggle_float, "Floating" },
    l = { toggle_lazygit, "LazyGit" }
  },
  g = {
	name = "Git",
	c = { ":Telescope git_commits<cr>", "Commits" },
	b = { ":Telescope git_branches<cr>", "Branches" },
	s = { ":Telescope git_status<cr>", "Status" },
	
  },
  f = {
	name = "Files",
	n = { ":ene <BAR> startinsert <CR>", "New file" },
	f = { ":Telescope find_files<cr>", "Find Files" },
	r = { ":Telescope oldfiles<CR>", "Recent" },
  },
  l = {
    name = "LSP",
    i = { ":LspInfo<cr>", "Connected Language Servers" },
    k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
    K = { "<cmd>Lspsaga hover_doc<cr>", "Hover Commands" },
    w = { '<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder" },
    W = { '<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder" },
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>',
      "List Workspace Folders"
    },
    t = { '<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition" },
    d = { '<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition" },
    D = { '<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration" },
    r = { '<cmd>lua vim.lsp.buf.references()<cr>', "References" },
  },
  z = { ":ZenMode<cr>", "Toggle Zen Mode" },
  p = {
    name = "Vim-Plug",
    r = { ":PlugClean<cr>", "Remove Unused Plugins" },
    d = { ":PlugDiff<cr>", "Examine Plugins" },
    i = { ":PlugInstall<cr>", "Install Plugins" },
    s = { ":PlugStatus<cr>", "Status Plugins" },
    u = { ":PlugUpdate<cr>", "Update Plugins" }
  }
}

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
