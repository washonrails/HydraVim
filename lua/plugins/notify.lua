notify = require("notify")
notify.setup({
	timer_interval = 10000,
	stages = "slide",
	render = "minimal",
	timeout = 2000,
})

local uv = vim.loop
local HOME = uv.os_homedir()
local token_path = HOME .. "/.github_token"
local token = ""

-- Lê o token do arquivo, se existir
local function read_token()
	local f = io.open(token_path, "r")
	if f ~= nil then
		token = f:read("*all")
		f:close()
	end
end

-- Escreve o token no arquivo
local function write_token()
	local f = io.open(token_path, "w")
	f:write(token)
	f:close()
end

-- Verifica o número de notificações
local function check_notifications()
	local cmd = "curl -s -H 'Authorization: token " .. token .. "' https://api.github.com/notifications"
	local handle = io.popen(cmd)
	local result = handle:read("*a")
	handle:close()

	local json = vim.fn.json_decode(result)
	local current_notifications_count = json.notifications
	local notifications_count = #json

	if notifications_count == 0 or current_notifications_count == notifications_count then
		return
	end

	notify(notifications_count .. " notificações no Github", "info")
	check_followers()
end

-- Verifica o número de seguidores
local followers_count = nil
function check_followers()
	local cmd = "curl -s -H 'Authorization: token " .. token .. "' https://api.github.com/user"
	local handle = io.popen(cmd)
	local result = handle:read("*a")
	handle:close()

	json = vim.fn.json_decode(result)
	local current_followers_count = json.followers

	-- Verifica se houve mudança no número de seguidores
	if followers_count ~= nil and current_followers_count ~= followers_count then
		local message = "Você agora tem " .. current_followers_count .. " seguidores no GitHub!"
		notify(message, "info")
	end

	-- Atualiza o número de seguidores
	followers_count = current_followers_count
end

-- Verifica o token e executa as verificações
local function token_handler()
	if token == "" then
		token = vim.fn.input("Insira sua token do GitHub: ")
		write_token()
	end

	check_notifications()
end

-- Inicializa o timer
local function init()
	read_token()
	uv.new_timer():start(0, 60 * 60 * 1000, vim.schedule_wrap(token_handler))
end

init()
