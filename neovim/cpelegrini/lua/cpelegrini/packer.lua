-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
   is_bootstrap = true
   vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
   vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
   -- Package manager
   use 'wbthomason/packer.nvim'

   use { -- LSP Configuration & Plugins
      'neovim/nvim-lspconfig',
      requires = {
         -- Automatically install LSPs to stdpath for neovim
         'williamboman/mason.nvim',
         'williamboman/mason-lspconfig.nvim',
         -- Useful status updates for LSP
         'j-hui/fidget.nvim',
         -- Additional lua configuration, makes nvim stuff amazing
         'folke/neodev.nvim',
      },
   }

   -- Autocompletion
   use {
      'hrsh7th/nvim-cmp',
      requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
   }
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-path'

   use { -- Highlight, edit, and navigate code
      'nvim-treesitter/nvim-treesitter',
      run = function()
         pcall(require('nvim-treesitter.install').update { with_sync = true })
      end,
   }
   -- surround text 
   use 'tpope/vim-surround'

   use { -- Additional text objects via treesitter
      'nvim-treesitter/nvim-treesitter-textobjects',
      after = 'nvim-treesitter',
   }

   -- Git related plugins
   use 'tpope/vim-fugitive'

   -- Fuzzy Finder (files, lsp, etc)
   use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

   -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
   use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

   -- Shows marks on left of editor
   use 'kshenoy/vim-signature'

   -- colorscheme
   use({ 'rose-pine/neovim', as = 'rose-pine', config = function()
      vim.cmd('colorscheme rose-pine')
   end
   })

   -- Show color code with visual color
   use('norcalli/nvim-colorizer.lua')

   if is_bootstrap then
      require('packer').sync()
   end
end)

-- When we are bootstrapping a configuration, it doesn't
-- make sense to execute the rest of the init.lua.
--
-- You'll need to restart nvim, and then it will work.
if is_bootstrap then
   print '=================================='
   print '    Plugins are being installed'
   print '    Wait until Packer completes,'
   print '       then restart nvim'
   print '=================================='
   return
end

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
   command = 'source <afile> | PackerCompile',
   group = packer_group,
   pattern = vim.fn.expand '$MYVIMRC',
})
