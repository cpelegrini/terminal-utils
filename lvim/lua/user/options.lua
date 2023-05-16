-- config lua
--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]
-- VIM OPTIONS
vim.opt.textwidth = 100 -- maximum text width to format
vim.opt.shiftwidth = 3
vim.opt.tabstop = 3
vim.opt.relativenumber = true
-- vim.opt.showtabline = 0
vim.opt.textwidth = 100
vim.opt.colorcolumn = '100'
vim.opt.cursorcolumn = false
vim.opt.clipboard = "" -- separate vim clipboard from OS clipboard

-- FOLD
vim.opt.foldenable = true
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 99


-- Netrw / Explore
-- vim.cmd [[
--    let g:netrw_banner=0
--    let g:netrw_preview = 1
--    let g:netrw_alto = 0
-- ]]


-- status line with mode: text mode (INSERT, NORMAL ... )
lvim.builtin.lualine.sections.lualine_a = { "mode" }

-- general
lvim.log.level = "info"
lvim.format_on_save = true
-- lvim.format_on_save = {
--    enabled = true,
--    pattern = "*.lua",
--    timeout = 1000,
-- }
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false
