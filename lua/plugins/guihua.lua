-- default mapping
maps = {
	close_view = "<C-e>",
	send_qf = "<C-q>",
	save = "<C-s>",
	jump_to_list = "<C-w>k",
	jump_to_preview = "<C-w>j",
	prev = "<C-p>",
	next = "<C-n>",
	pageup = "<C-b>",
	pagedown = "<C-f>",
	confirm = "<C-o>",
	split = "<C-s>",
	vsplit = "<C-v>",
	tabnew = "<C-t>",
}

--
require("guihua.maps").setup({
	maps = {
		close_view = "<C-x>",
	},
})
