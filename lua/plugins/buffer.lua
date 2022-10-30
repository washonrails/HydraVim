require('bufferline').setup {
    options = {
-- 		close_icon = '',
		offsets = {
            {filetype = "NvimTree", text = "Files", text_align = "center", separator = false}
        },
    	indicator = {
            icon = '●', -- this should be omitted if indicator style is not 'icon'
            style = 'none' -- 'icon' | 'underline' | 'none',
        },
		diagnostics = "nvim_lsp", -- "nvim_lsp" | "coc"
    	diagnostics_update_in_insert = true,
		separator_style = 'any',
        groups = {
            items = {
                require('bufferline.groups').builtin.pinned:with({ icon = "" })
            }
        },
		diagnostics_indicator = function(count, level)
      		local icon = level:match("error") and "" or ""
      		return icon .. count
    	end,
	}
}
