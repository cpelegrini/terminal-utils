vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = 'Remap: Open Explorer'})
vim.keymap.set("n", "<leader>\\", "<C-w>w", {desc = 'Remap: Open Explorer'})

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = 'Remap: Move selected text down line'})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = 'Remap: Move selected text up line'})
vim.keymap.set("n", "J", "mzJ`z", {desc = 'Remap: Join current line with line below'})

-- vim.keymap.set("x", "<leader>p", [["_dP]], {desc = 'Remap: Paste from registry [d]'})  
-- vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], {desc = 'Remap: '})
-- vim.keymap.set("n", "<leader>Y", [["+Y]], {desc = 'Remap: '})
-- vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], {desc = 'Remap: Delete and copy to registry [d]'})