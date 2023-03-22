local present, alpha = pcall(require, "alpha")

if not present then
	return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	-- "                                                     ",
	-- "                                                     ",
	"                                                     ",
	"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
	"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
	"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
	"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
	"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
	"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
	"                                                     ",
	-- "                                                     ",
	-- "                                                     ",
	-- "                                                     ",
}
dashboard.section.buttons.val = {
	dashboard.button("n", "  - New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "  - Find file", ":Telescope find_files<CR>"),
	dashboard.button("r", "  - Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("s", "  - Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k <CR>"),
	dashboard.button("q", "  - Quit", ":qa<CR>"),
}

alpha.setup(dashboard.opts)

vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
