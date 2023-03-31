-- config lua
--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]

-- VIM OPTIONS
vim.opt.textwidth = 80 -- maximum text width to format
vim.opt.shiftwidth = 3
vim.opt.tabstop = 3
vim.opt.relativenumber = true
-- vim.opt.showtabline = 0
vim.opt.textwidth = 80
vim.opt.colorcolumn = '81'
vim.opt.cursorcolumn = false
vim.opt.clipboard = "" -- separate vim clipboard from OS clipboard

-- FOLD
vim.opt.foldenable = true
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 99


-- Netrw / Explore
vim.cmd [[
   let g:netrw_banner=0
   let g:netrw_preview = 1
   let g:netrw_alto = 0
]]


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

-- KEYMAPPINGS
-- <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-Tab>"] = ":bNext<cr>"
vim.keymap.set({ "n", "v" }, "<leader>y", [["*y]], { desc = 'Yank selected to OS clipboard' })
vim.keymap.set({ "n", "v" }, "<leader>tn", ":tabNext<cr>", { desc = 'TAB: Go to next' })
vim.keymap.set({ "n", "v" }, "<leader>tp", ":tabprevious<cr>", { desc = 'TAB: Go to previous' })
vim.keymap.set({ "n", "v" }, "<leader>tt", ":tabnew<cr>", { desc = 'TAB: Create new' })
vim.keymap.set({ "n", "v" }, "<leader>tc", ":tabclose<cr>", { desc = 'TAB: Close current' })



-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- THEME / COLORS SETTINGS
-- lvim.colorscheme = "lunar"
lvim.transparent_window = true

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- lvim.builtin.treesitter.ignore_install = { "haskell" }
-- -- always installed on startup, useful for parsers without a strict filetype
-- lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }

-- TELESCOPE
lvim.builtin.telescope.defaults.layout_strategy = "flex"
lvim.builtin.telescope.defaults.layout_config = {
   prompt_position = "top",
   height = 0.8,
   width = 0.8,
   horizontal = {
      preview_cutoff = 120,
      preview_width = 0.6,
   },
   vertical = {
      preview_cutoff = 40,
   },
   flex = {
      flip_columns = 150,
   },
}

for key, _ in pairs(lvim.builtin.telescope.pickers) do
   lvim.builtin.telescope.pickers[key].previewer = nil
   lvim.builtin.telescope.pickers[key].theme = nil
end
lvim.builtin.telescope.pickers.git_files.previewer = nil


-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
lvim.lsp.on_attach_callback = function(client, bufnr)
   -- local function buf_set_option(...)
   --   vim.api.nvim_buf_set_option(bufnr, ...)
   -- end
   -- --Enable completion triggered by <c-x><c-o>
   -- buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
   vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
      vim.lsp.buf.format()
   end, { desc = 'Format current buffer with LSP' })
end

-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
   { command = "stylua" },
   {
      command = "prettier",
      extra_args = {}, -- { "--print-width", "100" },
      filetypes = { "typescript", "typescriptreact" },
   },
}
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     command = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
-- lvim.plugins = {
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }

-- -- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
   callback = function()
      vim.highlight.on_yank()
   end,
   group = highlight_group,
   pattern = '*',
})



require 'lspconfig'.csharp_ls.setup {}

