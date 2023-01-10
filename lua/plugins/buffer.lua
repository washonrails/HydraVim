local present, bufferline = pcall(require, "bufferline")

if not present then
    return
end

bufferline.setup {
    options = {
		show_close_icon = false,
		offsets = {
            {filetype = "NvimTree", text = "Files", text_align = "center", separator = false}
        },
    	indicator = {
            icon = '●',
            style = 'none'
        },
		diagnostics = "nvim_lsp",
    	diagnostics_update_in_insert = true,
		separator_style = 'any',
        groups = {
            items = {
                require('bufferline.groups').builtin.pinned:with({ icon = "" })
            }
        },
		diagnostics_indicator = function(count, level)
      		local icon = level:match("error") and " " or " "
      		return icon .. count
    	end,
	}
}
