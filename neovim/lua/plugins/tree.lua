local g = vim.g

-- g.nvim_tree_quit_on_open = 1

require('nvim-tree').setup{
  --auto_close = true,
  filters = {
    dotfiles = true,
    custom = {'.git', 'node_modules', '.cache'}
  },
  view = {
    width = 40
  }
}

