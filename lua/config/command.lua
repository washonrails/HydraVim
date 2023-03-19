local utils = require("core.utils")

local commands = {
    {"HydraVimReload", utils.ReloadVimrc, {}, "Reload HydraVim"}
}

for _, command in ipairs(commands) do
    vim.api.nvim_create_user_command(command[1], command[2], command[3])
end

