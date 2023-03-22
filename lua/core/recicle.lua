local H = {}

H.runnerWindow = function()
  -- Cria o buffer
  local buffer = vim.api.nvim_create_buf(false, true)

  -- Define as opções do buffer
  vim.api.nvim_buf_set_option(buffer, 'filetype', 'terminal')

  -- Cria a janela flutuante com o buffer definido
  local winid = vim.api.nvim_open_win(buffer, true, {
    relative = 'editor',
    row = vim.api.nvim_win_get_height(0) / 2 - 10,
    col = vim.api.nvim_win_get_width(0) / 2 - 40,
    height = 20,
    width = 90,
    style = 'minimal',
    border = {top = 1, bottom = 1, left = 1, right = 1},
    focusable = false
  })

  -- Define a janela como flutuante
  vim.api.nvim_win_set_option(winid, 'winblend', 0)

  -- Define as bordas como arredondadas
  vim.api.nvim_win_set_option(winid, 'winhighlight', 'Normal:RunnerBorder')

  -- Abre o buffer da janela no modo terminal
  vim.api.nvim_set_current_win(winid)
  vim.api.nvim_set_current_buf(buffer)
  vim.fn.termopen(os.getenv('SHELL'))
end

return H
