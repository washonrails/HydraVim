local cmp = require'cmp'
local border = require("core.border").rouded 
local kind_icons = require("core.ui.icons").icons.kind_icons

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
require("nvim-autopairs").setup {}

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },

  mapping = {
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    -- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<Esc>'] = cmp.mapping.abort(),
    -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end

  },

    formatting = {
      fields = { 'kind', 'abbr'},
      format = function(_, vim_item)
        vim_item.kind = kind_icons[vim_item.kind]
        return vim_item
      end,
    },

  sources = {
    {name = 'path'},
    {name = 'nvim_lsp', keyword_length = 1},
    {name = 'buffer', keyword_length = 1},
    { name = 'ultisnips', keyword_length = 1},
  },

    window = {
      completion = {
        scrollbar = false,
        border = border('CmpBorder'),
          winhighlight = 'Normal:CmpPmenu,CursorLine:PmenuSel,Search:None',
      },
      documentation = {
        winhighlight = 'Normal:CmpPmenu,CursorLine:PmenuSel,Search:None',
        border = border('CmpBorder'),
      },
    },
})

cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' },
  }, {
    { name = 'buffer' },
  })
})

cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})
