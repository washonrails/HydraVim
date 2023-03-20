local utils = require("core.utils")
local updater = require("core.updater")

local commands = {
    { "ReloadVim", utils.ReloadVimrc, {}, "Reloading HydraVim" },
    { "UpdateSync", updater.sync_config_repo, {}, "Update HydarVim" }
}

for _, command in ipairs(commands) do
    vim.api.nvim_create_user_command(command[1], command[2], command[3])
end
