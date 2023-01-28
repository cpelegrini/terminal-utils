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

vim.cmd [[ 
   set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,i-ci-ve-r-cr:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175 
]]

require'colorizer'.setup()
