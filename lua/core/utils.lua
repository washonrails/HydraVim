local H = {}

H.ReloadVimrc = function ()
  vim.cmd "luafile $MYVIMRC"
end

H.Map = function(mode, keys, comd, desc)
    vim.keymap.set(mode, keys, comd, desc, { silent = true })
end

return H
