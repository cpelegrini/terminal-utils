-- [[ Setting options ]]
-- See `:help vim.o`

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true
vim.opt.backup = false

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 50
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.o.termguicolors = true
-- vim.cmd [[colorscheme onedark]]

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

vim.o.textwidth = 80  -- maximum text width to format
vim.o.cmdheight = 2
vim.o.number = true
vim.o.relativenumber = false
vim.o.wrap = false
vim.o.signcolumn = 'yes'
vim.o.showmatch = true
vim.o.showmode = true
vim.o.foldenable = true
vim.o.foldmethod = 'indent'
vim.o.foldlevelstart=20
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.colorcolumn = '90'
vim.o.cursorcolumn = false
vim.o.cursorline = true
vim.o.scrolloff = 10 -- 999 cursor stay at middle screen
vim.o.expandtab = true
vim.o.shiftwidth = 3
vim.o.tabstop = 3
vim.o.smartindent = true

-- Cursor center screen. Fix some problems about center cursor: scrolloff
-- vim.cmd [[
--    augroup VCenterCursor
--    au!
--    au BufEnter,WinEnter,WinNew,VimResized *,*.*
--    \ let &scrolloff=winheight(win_getid())/2
--    augroup END
-- ]]

-- Add matchit macro to navigation between tags <x></x> using %
vim.cmd [[
   packadd! matchit
   filetype plugin on
]]

-- Terminal
vim.cmd [[
  let g:conceallevel = 0
  let g:indentLine_conceallevel = 0
]]

-- Prettier enable on save
vim.cmd [[
  let g:prettier#autoformat = 1
  let g:prettier#autoformat_require_pragma = 0
]]
