local utils = require("core.utils")
local updater = require("core.updater")
local recicle = require("core.recicle")

local commands = {
    { "ReloadVim", utils.ReloadVimrc, {}},
    { "UpdateSync", updater.sync_config_repo, {}},
    { "Errors", utils.GetError , {}},
	{ "Runner", recicle.runnerWindow, {}}
}

for _, command in ipairs(commands) do
    vim.api.nvim_create_user_command(command[1], command[2], command[3])
end
