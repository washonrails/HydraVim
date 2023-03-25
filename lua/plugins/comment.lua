local present, nvim_comment = pcall(require, "nvim_comment")

if not present then
	return
end

nvim_comment.setup({
	marker_padding = true,
	comment_empty = false,
	comment_empty_trim_whitespace = false,
	create_mappings = true,
	line_mapping = "c",
	operator_mapping = "c",
	comment_chunk_text_object = "<leader>c",
	hook = nil,
})
