local function sync_config_repo()
    local branch = "main"

    local nvim_config_path
    if package.config:sub(1,1) == '\\' then
        nvim_config_path = os.getenv("USERPROFILE") .. "\\AppData\\Local\\nvim"
    else
        nvim_config_path = os.getenv("HOME") .. "/.config/nvim"
    end

    local git_fetch_command = "git -C " .. nvim_config_path .. " fetch -q"
    local git_pull_command = "git -C " .. nvim_config_path .. " pull -q"
    local git_status_command = "git -C " .. nvim_config_path .. " status -s -b"
    local git_clean_command = "git -C " .. nvim_config_path .. " clean -q -f -d"
    local git_reset_command = "git -C " .. nvim_config_path .. " reset -q --hard origin/" .. branch

    local git_version_command = "git --version"
    local git_version = io.popen(git_version_command):read()
    if git_version == nil or git_version == "" then
        print("Git is not available, please install git before running this command")
        return
    end

    os.execute(git_fetch_command)
    local git_status = io.popen(git_status_command):read()

    os.execute(git_clean_command)
    os.execute(git_reset_command)
    os.execute(git_pull_command)
    local success_message = "Successfully updated HydraVim config!"
    local error_message = "Could not update HydraVim from remote."
    if string.match(git_status, "Your branch is up to date") then
        success_message = "Your HydraVim config is already up to date"
    end
    if string.match(git_status, "Could not fetch origin") then
        error_message = "Could not fetch HydraVim remote repository"
        print(error_message)
        return
    end
    print(success_message)
    vim.cmd[[ PackerSync ]]
end

vim.api.nvim_create_user_command("UpdateSync", sync_config_repo, {})

