local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

opt.termguicolors = true

-- Load colorscheme plugins and features

-- https://github.com/Mofiqul/dracula.nvim#-configuration
require("dracula").setup({
    colors = {
     }
})

--https://github.com/EdenEast/nightfox.nvim
require('nightfox').setup({
    options = {
        styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
        }
    }
})

-- cmd [[colorscheme dracula]]
-- cmd [[colorscheme nightfox]]
-- cmd [[ colorscheme carbonfox ]]
-- cmd [[ colorscheme tender ]]
-- cmd [[ colorscheme murphy ]]
-- cmd [[ colorscheme catppuccin ]]
-- cmd [[ colorscheme paramount ]]
-- cmd [[ colorscheme vimdark ]]
cmd [[ colorscheme moonfly ]]

-- cmd [[
--   highlight ColorColumn guibg=#333333
--   highlight CursorLine guibg=#222222
--   highlight CursorLineNr guibg=#0000aa
-- ]] -- vert line color (colorcolumn)

-- selection color
cmd [[hi Visual guibg=#4d535a]]

-- Clap
cmd [[let g:clap_theme = 'material_design_dark']]

require'colorizer'.setup()
