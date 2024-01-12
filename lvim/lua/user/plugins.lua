lvim.plugins = {
   {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      event = "InsertEnter",
   },
   {
      "zbirenbaum/copilot-cmp",
      after = { "copilot.lua" },
      config = function()
         require("copilot_cmp").setup()
      end,
   },
   {
      "tpope/vim-surround"
   },
}
local ok, copilot = pcall(require, "copilot")
if not ok then
   return
end

copilot.setup {
   suggestion = {
      keymap = {
         accept = "<c-l>",
         next = "<c-j>",
         prev = "<c-k>",
         dismiss = "<c-h>",
      },
   },
}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<c-s>", "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<CR>", opts)

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.view.adaptive_size = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.bufferline.active = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

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

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>

-- require 'lspconfig'.csharp_ls.setup {}
