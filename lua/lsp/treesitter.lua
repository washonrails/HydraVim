local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
    return
end

treesitter.setup {
  sync_install = true,
  auto_install = true,
  ensure_installed = { "lua" },
  highlight = {
    enable = true,
	use_languagetree = true,
    additional_vim_regex_highlighting = true,
  },
  indent = {
	enable = true,
  },
}
