-- THEME / COLORS SETTINGS
lvim.colorscheme = "lunar"
-- lvim.colorscheme = "darkblue"
-- lvim.transparent_window = true
--
-- Nvimtree backgroud color
vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guifg=#a9b1d6 guibg=#1A1A00")

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
   callback = function()
      vim.highlight.on_yank()
   end,
   group = highlight_group,
   pattern = '*',
})
