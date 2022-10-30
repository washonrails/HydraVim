-- require'nvim-treesitter.configs'.setup {
--   -- A list of parser names, or "all"
-- 
--   sync_install = true,
--   auto_install = true,
-- 
--   highlight = {
--     enable = true,
--     disable = function(lang, buf)
--         local max_filesize = 100 * 1024 -- 100 KB
--         local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
--         if ok and stats and stats.size > max_filesize then
--             return true
--         end
--     end,
-- 
--     additional_vim_regex_highlighting = true,
--   },
-- }

require'nvim-treesitter.configs'.setup {
--   ensure_installed = { "c", "lua", "rust","bash","cpp","vim" },
--   ensure_installed = { "c", "lua", "rust","vim","cpp","bash","java"," c_sharp","css","html","json","sql" },
--   dsabilitado, todas são auto_install conforme necessárioi

  sync_install = true,

  auto_install = true,

  highlight = {
    enable = true,

    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    additional_vim_regex_highlighting = true,
  },
}
