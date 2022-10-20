local g = vim.g
local opt = vim.opt
local cmd = vim.cmd


-- General 
g.mapleader = '\\'
g.vim_markdown_conceal = 0

-- General
opt.compatible = false
opt.mouse = 'a'
opt.clipboard:append { 'unnamed', 'unnamedplus' }
opt.swapfile = false
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 2


-- Editor
opt.textwidth = 90  -- maximum text width to format
opt.cmdheight = 2
opt.number = true
opt.relativenumber = false
opt.wrap = false
opt.signcolumn = 'yes'
opt.showmatch = true
opt.showmode = true
opt.foldenable = true
opt.foldmethod = 'indent'
opt.foldlevelstart=20
opt.splitright = true
opt.splitbelow = true
opt.colorcolumn = '90'
opt.cursorcolumn = false
opt.cursorline = true
--opt.ctermbg = 8
opt.conceallevel = 0
opt.scrolloff = 10
opt.expandtab = true
opt.shiftwidth = 3
opt.tabstop = 3
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


