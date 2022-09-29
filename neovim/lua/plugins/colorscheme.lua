local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- Load colorscheme plugins and features


opt.termguicolors = false
vim.g.neon_style = "default"
vim.g.neon_italic_keyword = true
vim.g.neon_italic_function = true
vim.g.neon_transparent = true

-- cmd [[colorscheme dracula]]
-- cmd [[colorscheme ghdark]]
vim.cmd[[colorscheme neon]]

cmd [[
  highlight ColorColumn guibg=#333333
  highlight CursorLineNr guibg=#0000aa
]] -- vert line color (colorcolumn)


