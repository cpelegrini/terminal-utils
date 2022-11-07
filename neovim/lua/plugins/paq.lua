require('paq') {
   'savq/paq-nvim';
   'nvim-lua/plenary.nvim';
   --
   -- -- Visual
   -- -- 'glepnir/dashboard-nvim';
   -- colorschemes
   'Mofiqul/dracula.nvim';
   'EdenEast/nightfox.nvim';
   'jacoborus/tender.vim';
   'bluz71/vim-moonfly-colors';
   {'catppuccin/nvim', as='catppuccin' };
   'ldelossa/vimdark';
   'owickstrom/vim-colors-paramount';
   --
   'famiu/feline.nvim';
   'kyazdani42/nvim-web-devicons';
   'kyazdani42/nvim-tree.lua';
   'nvim-telescope/telescope.nvim';
   {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'};
   'nvim-treesitter/nvim-treesitter';
   'francoiscabrol/ranger.vim';
   'rbgrouleff/bclose.vim';
   -- 'voldikss/vim-floaterm';
   {'akinsho/toggleterm.nvim', tag = '*'}; 
   'nvim-telescope/telescope-file-browser.nvim';
   -- -- 'vim-airline/vim-airline';
   -- -- 'vim-airline/vim-airline-themes';
   -- -- 'ellisonleao/glow.nvim';
   'plasticboy/vim-markdown';
   --
   -- -- LSP
   'neovim/nvim-lspconfig';
   'williamboman/nvim-lsp-installer';
   'hrsh7th/nvim-cmp';
   'hrsh7th/cmp-nvim-lsp';
   'hrsh7th/cmp-path';
   'hrsh7th/cmp-buffer';
   'saadparwaiz1/cmp_luasnip';
   -- navigator requires
   { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' };
   'ray-x/navigator.lua';
   
   -- 
   -- -- Languages
   'sheerun/vim-polyglot';
   --
   -- -- Snipets
   'L3MON4D3/LuaSnip';
   --
   -- -- Editor
   'windwp/nvim-autopairs';
   'tpope/vim-surround';
   'tpope/vim-commentary';
   'tpope/vim-repeat';
   'pbrisbin/vim-mkdir';
   -- 'RRethy/vim-illuminate'; -- causa underline das palavras coincidentes
   'prettier/vim-prettier';
   'Yggdroot/indentLine';
   'lukas-reineke/indent-blankline.nvim';
   'skywind3000/vim-quickui';
    'liuchengxu/vim-clap'; -- comando após instalar: Clap install-binary
   'norcalli/nvim-colorizer.lua';
   --
   -- -- Git
   'lewis6991/gitsigns.nvim';
   'nvim-lua/plenary.nvim';
   'sindrets/diffview.nvim';
   --
   -- -- Js/Ts
   'pangloss/vim-javascript';
   'MaxMEllon/vim-jsx-pretty';
   'HerringtonDarkholme/yats.vim';
   'styled-components/vim-styled-components';
   --
   -- -- Json
   'elzr/vim-json';
   --
   -- -- Dart/Flutter
   -- -- 'dart-lang/dart-vim-plugin';
   -- -- 'akinsho/flutter-tools.nvim';
   --
   -- -- Debugger
   -- -- 'puremourning/vimspector';
}

