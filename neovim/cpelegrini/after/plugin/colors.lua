require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	vim.api.nvim_set_hl(0, "CursorLine", { bg = '#1E1D1A' })
	vim.api.nvim_set_hl(0, "ColorColumn", { bg = '#3C3426' })
	vim.api.nvim_set_hl(0, "StatusLine", { bg = '#403d52'  }) -- window status bar active
	vim.api.nvim_set_hl(0, "StatusLineNC", { bg = '#222126', fg = '#676867' }) -- status bar inactive
end

ColorMyPencils()
require'colorizer'.setup()
