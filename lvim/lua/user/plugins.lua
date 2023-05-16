table.insert(lvim.plugins, {
   "nvim-lualine/lualine.nvim",
   dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
   config = function()
      require("lvim.core.lualine").setup()
   end,
   lazy = false
})
table.insert(lvim.plugins, {
   "zbirenbaum/copilot.lua",
   cmd = "Copilot",
   event = "InsertEnter",
   config = function()
      require("copilot").setup()
      -- require("copilot").setup({
      --    suggestion = { enabled = false },
      --    panel = { enabled = false },
      -- })
   end,
}
)
table.insert(lvim.plugins, {
   "zbirenbaum/copilot-cmp",
   after = { "copilot.lua" },
   config = function()
      require("copilot_cmp").setup()
   end
})


lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.bufferline.active = false

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
--
require 'lspconfig'.csharp_ls.setup {}
