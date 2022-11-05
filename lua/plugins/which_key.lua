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
    separator = "",
    group = "",
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
  triggers = "<leader>",
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
  q = { ":q<cr>", " Quit" },
  w = { ":w<cr>", " Save" },
  e = { ":NvimTreeToggle<cr>", "פּ Tree" },
  s = { ":e ~/.config/nvim/init.lua<cr>", " Settings" },
  r = { ":Telescope live_grep<cr>", " Live Grep" },
  u = { ":TermExec size=10 direction=float cmd='sh ~/.config/nvim/script/update.sh && exit'<CR>", " Update" },
  t = {
    t = { ":ToggleTerm<cr>", "Horizontal" },
    m = { ":ToggleTerm size=45 direction=vertical<CR>", "Vertical" },
    f = { toggle_float, "Floating" },
    l = { toggle_lazygit, "LazyGit" }
  },
  g = {
	name = " Git",
	c = { ":Telescope git_commits<cr>", " Commits" },
	b = { ":Telescope git_branches<cr>", " Branches" },
	s = { ":Telescope git_status<cr>", " Status" },
	
  },
  f = {
	name = " Files",
	n = { ":ene <BAR> startinsert <CR>", " New file" },
	f = { ":Telescope find_files<cr>", " Find Files" },
	r = { ":Telescope oldfiles<CR>", " Recent" },
  },
  l = {
    name = " LSP",
    i = { ":LspInfo<cr>", " LSP Info" },
  },
  z = { ":ZenMode<cr>", " Zen Mode" },
  p = {
    name = "ﮣ Plugins",
    r = { ":PlugClean<cr>", "ﮁ Remove Unused Plugins" },
    e = { ":PlugDiff<cr>", " Examine Plugins" },
    i = { ":PlugInstall<cr>", " Install Plugins" },
    s = { ":PlugStatus<cr>", " Status Plugins" },
    u = { ":PlugUpdate<cr>", " Update Plugins" }
  }
}

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
