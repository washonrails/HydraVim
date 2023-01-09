local present, indent_blankline = pcall(require, "indent_blankline")

if not present then
    return
end

vim.opt.list = true

indent_blankline.setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = false,
}
