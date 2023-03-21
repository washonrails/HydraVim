local preset, cmp = pcall(require, "cmp")
local border = require("core.border").rouded
local kind_icons = require("core.ui.icons").icons.kind_icons
local preset_p, autopairs = pcall(require, "nvim-autopairs")

if not preset then
	return
end

if preset_p then
	autopairs.setup({})
end

cmp.setup({
	confirmation = { completeopt = "menu, menuone, noinsert" },
	snippet = {
		expand = function(args)
			vim.fn["UltiSnips#Anon"](args.body)
		end,
	},

	mapping = cmp.mapping.preset.insert({
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
		-- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
		["<Esc>"] = cmp.mapping.abort(),
		-- ['<C-f>'] = cmp.mapping.scroll_docs(4),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end,
		["<S-Tab>"] = function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end,
	}),

	formatting = {
		fields = { "kind", "abbr" },
		format = function(_, vim_item)
			vim_item.kind = kind_icons[vim_item.kind]
			return vim_item
		end,
	},

	sources = {
		{ name = "path" },
		{ name = "nvim_lsp", keyword_length = 1 },
		{ name = "buffer", keyword_length = 1 },
		{ name = "ultisnips", keyword_length = 1 },
	},

	window = {
		completion = {
			scrollbar = false,
			border = border("CmpBorder"),
			winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
		},
		documentation = {
			winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
			border = border("CmpBorder"),
		},
	},
})

cmp.setup.filetype("gitcommit", {
	sources = cmp.config.sources({
		{ name = "cmp_git" },
	}, {
		{ name = "buffer" },
	}),
})

cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline({
		["<Down>"] = { c = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }) },
		["<Up>"] = { c = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }) },
	}),
	sources = {
		{ name = "buffer" },
	},
})

cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline({
		["<Down>"] = { c = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }) },
		["<Up>"] = { c = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }) },
	}),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})
