local capabilities = require('cmp_nvim_lsp').default_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)


local ns = { noremap = true, silent = true }
local on_attach = function(_, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', ns)
  buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.definition()<CR>', ns)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', ns)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', ns)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', ns)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', ns)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', ns)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', ns)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', ns)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', ns)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', ns)
  -- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', ns)
  buf_set_keymap('n', '<space>ce', '<cmd>lua vim.diagnostic.open_float()<CR>', ns)
  buf_set_keymap('n', '<space>cp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', ns)
  buf_set_keymap('n', '<space>cn', '<cmd>lua vim.diagnostic.goto_next()<CR>', ns)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.set_loclist()<CR>', ns)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', ns)
end

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(
  function(server)
    local opts = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
  end
)

-- Flutter
-- require("flutter-tools").setup{
--   lsp = {
--     on_attach = on_attach,
--     capabilities = capabilities
--   },
-- }

require 'lspconfig'.csharp_ls.setup {}
require 'lspconfig'.marksman.setup {
  cmd = { "marksman", "server" },
  filetypes = { "markdown" }
}
require 'lspconfig'.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}
require 'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
