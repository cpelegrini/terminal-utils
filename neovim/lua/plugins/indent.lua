local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#333333 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#222222 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineChar guifg=#222222 gui=nocombine]]

require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " " ,
    show_current_context = true,
    show_current_context_start = true,
    char_highlight_list = {
        "IndentBlanklineIndent1"
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent2"
    },
}

