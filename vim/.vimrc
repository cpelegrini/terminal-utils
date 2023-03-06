call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes


Plug 'tpope/vim-surround'
Plug 'kshenoy/vim-signature'
Plug 'dracula/vim'
Plug 'itsjunetime/rose-pine-vim'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

"*******************
"settings
"*******************

" colo rose-pine-dark
syntax on

set nohls
" Make line numbers default
set number
" Enable mouse mode
set mouse=a
" Enable break indent
set breakindent
" Save undo history
set undofile
set nobackup
" Case insensitive searching UNLESS /C or capital in search
set ignorecase
set smartcase
" Decrease update time
set updatetime=50
set signcolumn=yes
" Set colorscheme
set termguicolors
" Set completeopt to have a better completion experience
set completeopt=menuone,noselect
set textwidth=80  " maximum text width to format
set cmdheight=1
set nowrap 
set signcolumn=yes
set showmatch
set showmode
set foldenable
set foldmethod=indent
set foldlevelstart=99
set splitright
set splitbelow
set colorcolumn=90
set cursorline
"scrolloff = 10 -- 999 cursor stay at middle screen
set expandtab
set shiftwidth=3
set tabstop=3
set smartindent
" Add matchit macro to navigation between tags <x></x> using %
packadd! matchit
filetype plugin on
" Netrw
let g:netrw_banner=0
let g:netrw_preview=1
let g:netrw_alto=0
" Terminal
let g:conceallevel=0
let g:indentLine_conceallevel=0
"autocmd VimEnter * :Explore

