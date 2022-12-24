require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color) 
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- cmd [[
--   highlight ColorColumn guibg=#333333
--   highlight CursorLine guibg=#222222
--   highlight CursorLineNr guibg=#0000aa
-- ]] -- vert line color (colorcolumn)

	vim.api.nvim_set_hl(0, "CursorLine", { bg = '#343028' })
	vim.api.nvim_set_hl(0, "ColorColumn", { bg = '#3C3426' })
	vim.api.nvim_set_hl(0, "StatusLine", { bg = '#403d52' })
end

ColorMyPencils()
require'colorizer'.setup()
