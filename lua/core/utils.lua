local H = {}

H.ReloadVimrc = function ()
  vim.cmd "luafile $MYVIMRC"
end

return H
