
vim.cmd [[
    let g:quickui_border_style = 0
    let g:quickui_color_scheme = 'papercol dark'
    let g:quickui_preview_w = 100
    let g:quickui_preview_h = 15
]]




function load_widget(name)
  local path="source ~/.config/nvim/lua/plugins/quickui/" .. name
  vim.cmd(path)
end

load_widget('menu-top.vim')
-- load_widget('popup.vim')
-- load_widget('list.vim')
