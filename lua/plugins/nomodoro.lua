require("nomodoro").setup({
	work_time = 25,
	break_time = 5,
	menu_available = true,
	texts = {
		on_break_complete = "TIME IS UP!",
		on_work_complete = "TIME IS UP!",
		status_icon = "羽",
		timer_format = "!%0M:%0S", -- To include hours: '!%0H:%0M:%0S'
	},
	on_work_complete = function() end,
	on_break_complete = function() end,
})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<leader>nw", "<cmd>NomoWork<cr>", opts)
map("n", "<leader>nb", "<cmd>NomoBreak<cr>", opts)
map("n", "<leader>ns", "<cmd>NomoStop<cr>", opts)
