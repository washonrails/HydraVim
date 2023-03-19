local present, colorscheme = pcall(require, "catppuccin")

if not present then
    return
end

vim.cmd [[ colorscheme catppuccin-mocha ]]
