local g = vim.g
local opt = vim.opt
local cmd = vim.cmd


-- General 
g.mapleader = '\\'
g.vim_markdown_conceal = 0

-- General
opt.compatible = false
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.swapfile = false
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 2

-- Theme
opt.termguicolors = true
-- cmd [[colorscheme dracula]]
cmd [[colorscheme ghdark]]

-- Editor
vim.opt.cmdheight = 2
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.signcolumn = 'yes'
opt.showmatch = true
opt.showmode = false
opt.foldmethod = 'marker'
opt.splitright = true
opt.splitbelow = true
opt.colorcolumn = '90'
opt.cursorcolumn = true
opt.cursorline = true
--opt.ctermbg = 8
opt.conceallevel = 0
opt.scrolloff = 10
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.list = true
opt.listchars = { eol = '¬' }
opt.shortmess:append {c = true}
opt.whichwrap:append {
  ['<'] = true,
  ['>'] = true,
  [','] = true,
  h = true,
  l = true
}
cmd [[
  highlight ColorColumn guibg=#333333
  highlight CursorLineNr guibg=#ff0000
]] -- vert line color (colorcolumn)

-- Terminal
cmd [[command! Term :botright split term://$SHELL]]
cmd [[
  autocmd TermOpen * setlocal listchars= nonumber norelativenumber nocursorline
  autocmd TermOpen * startinsert
  autocmd BufLeave term://* stopinsert
]]

cmd [[autocmd BufNewFile,BufRead *.md set filetype=markdown]]

-- FloatTerm
g.floaterm_keymap_toggle = '<Leader><Leader>t'

-- Vimspector
g.vimspector_enable_mappings = 'VISUAL_STUDIO' -- 'HUMAN'

-- Polyglot
g.polyglot_disabled = {'markdown'}


