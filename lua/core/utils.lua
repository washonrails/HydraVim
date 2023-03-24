local H = {}

H.ReloadVimrc = function ()
  vim.cmd "source ~/.config/nvim/init.lua"
end

H.Map = function(mode, keys, comd, desc)
    vim.keymap.set(mode, keys, comd, desc, { silent = true, noremap = true })
end

H.GetError = function ()
  vim.cmd "redir @+ | messages | redir END"
end

H.Lazydocker = function()
end

return H
