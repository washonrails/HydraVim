local H = {}

H.ReloadVimrc = function ()
  vim.cmd "luafile $MYVIMRC"
end

H.Map = function(mode, keys, comd, desc)
    vim.keymap.set(mode, keys, comd, desc, { silent = true, noremap = true })
end

H.GetError = function ()
  vim.cmd "redir @+ | messages | redir END"
end

return H
