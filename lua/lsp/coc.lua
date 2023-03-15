vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.updatetime = 300
vim.opt.signcolumn = "yes"
vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})
vim.g.coc_global_extensions = {
    'coc-pairs',
    'coc-snippets',
    'coc-clangd',
    'coc-pyright',
    'coc-tsserver',
    'coc-html',
    'coc-go',
    'coc-json',
    'coc-vimlsp',
    'coc-css',
    'coc-solargraph',
    'coc-rust-analyzer',
    'coc-lua'
}

local keyset = vim.keymap.set
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})
keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})

vim.cmd([[
hi CocSearch ctermfg=12 guifg=#4fa6ed " Cor do texto digitado
" hi CocMenuSel ctermbg=109 guibg=#181b20 " Cor do fundo
]])
