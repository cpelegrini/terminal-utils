local g = vim.g

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup{
  --auto_close = true,
  filters = {
    dotfiles = true,
    custom = {'.git', 'node_modules', '.cache'}
  },
  view = {
    adaptive_size = true,
  },
  renderer = {
    indent_width = 2,
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        item = "│ ",
        bottom = "─ ",
        none = "  ",
      },
    }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  }
}

