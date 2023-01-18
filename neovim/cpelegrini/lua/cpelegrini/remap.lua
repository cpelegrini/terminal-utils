vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Remap: Open Explorer' })
vim.keymap.set("n", "<tab>", "<c-w>w", { desc = 'remap: switch windows focus' })
-- vim.keymap.set("n", ",", ":", {desc = 'Remap: Enter command mode'})

-- Tabpage commands
vim.keymap.set("n", "˙", ":tabprev<CR>", { desc = 'remap: <A-h> Tab previous' })
vim.keymap.set("n", "∆", ":tabmove -1<CR>", { desc = 'remap: <A-j> Tab move -1' })
vim.keymap.set("n", "˚", ":tabmove +1<CR>", { desc = 'remap: <A-k> Tab move +1' })
vim.keymap.set("n", "¬", ":tabnext<CR>", { desc = 'remap: <A-l> Tab next' })
vim.keymap.set("n", "ç", ":tabclose<CR>", { desc = 'remap: <A-t> Tab close' })
vim.keymap.set("n", "†", ":tabnew<CR>", { desc = 'remap: <A-c> Tab new' })
vim.keymap.set("n", "ƒ", ":tabfirst<CR>", { desc = 'remap: <A-f> Tab first' })
vim.keymap.set("n", "©", ":tablast<CR>", { desc = 'remap: <A-g> Tab last' })


--vim.keymap.set("n", "<F4>", ":let @* = expand('%:p:h')<CR>", {desc = 'Remap: Copy current folder to clipboard'})
vim.keymap.set("n", "<f4>", ":let @* = expand('%:p:h')", { desc = 'Remap: Copy current folder to clipboard' })

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


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Remap: Move selected text down line' })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Remap: Move selected text up line' })
vim.keymap.set("n", "J", "mzJ`z", { desc = 'Remap: Join current line with line below' })

-- vim.keymap.set("x", "<leader>p", [["_dP]], {desc = 'Remap: Paste from registry [d]'})
vim.keymap.set({ "n", "v" }, "<leader>y", [["*y]], { desc = 'Remap: Yank selected to OS clipboard' })
vim.keymap.set("n", "<leader>Y", [["*Y]], { desc = 'Remap: Yank line to OS clipboard' })
-- vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], {desc = 'Remap: Delete and copy to registry [d]'})
--

-- User commands 
vim.api.nvim_create_user_command('CopyPath', function()
   vim.cmd(":let @* = expand('%:p:h')")
   vim.cmd("echo 'Path copied!'")
end, {})
