-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
    initial_mode = 'normal'
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = 'Telescope: Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = 'Telescope: Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>tf', require('telescope.builtin').find_files, { desc = 'Telescope: Search Files' })
vim.keymap.set('n', '<leader>th', require('telescope.builtin').help_tags, { desc = 'Telescope: Search Help' })
vim.keymap.set('n', '<leader>tw', require('telescope.builtin').grep_string, { desc = 'Telescope: Search current Word' })
vim.keymap.set('n', '<leader>tg', require('telescope.builtin').live_grep, { desc = 'Telescope: Search by Grep' })
vim.keymap.set('n', '<leader>td', require('telescope.builtin').diagnostics, { desc = 'Telescope: Search Diagnostics' })
