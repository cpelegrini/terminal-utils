--
-- After update, execute: :source $MYVIMRC<CR>
-- to reload without close vim
--
local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

-- Command
set("n", ";", ":", { noremap = true })
-- set("n", "<C-s>", ":w<CR>", ns) -- Save
set("i", "<Leader><Leader>", "<Esc>", { noremap = true }) -- Back to normal mode
set("n", "<Space>h", "0", { noremap = true }) -- Begin of line
set("n", "<Space>l", "$", { noremap = true }) -- End of line
set("n", "<Space>j", "<C-f>", { noremap = true }) -- Page down
set("n", "<Space>k", "<C-b>", { noremap = true }) -- Page up
set("n", "<C-S-Down>", ":m+1<CR>", ns) -- Move line down
set("n", "<C-S-Up>", ":m-2<CR>", ns) -- Move line up
set("i", "<C-S-Down>", "<Esc>:m+1<CR>", ns) -- Move line down
set("i", "<C-S-Up>", "<Esc>:m-2<CR>", ns) -- Move line up

-- Terminal
set("t", "<Esc>", "<C-\\><C-n><C-w><C-w>", ns)



-- Clean Search
set("n", "<Leader><Leader><Space>", ":let @/=''<CR>", ns)

-- Window
-- set("n", "<C-j>", ":resize -2<CR>", ns)
-- set("n", "<C-k>", ":resize +2<CR>", ns)
-- set("n", "<C-h>", ":vertical resize -2<CR>", ns)
-- set("n", "<C-l>", ":vertical resize +2<CR>", ns)
set("n", "<Leader>h", ":<C-u>split<CR>", ns)
set("n", "<Leader>v", ":<C-u>vsplit<CR>", ns)

-- Moving
set("n", "j", "gj", ns)
set("n", "k", "gk", ns)

-- Buffers
set("n", "<Tab>", ":BufferLineCycleNext<CR>", ns)
set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", ns)
set("n", "<C-d>", ":bd<CR>", ns)
set("n", "<C-t>", ":tabnew<CR>", ns)

-- Nvim Tree
set("n", "<C-n>", ":NvimTreeToggle<CR>", ns)
set("n", "<Leader>n", ":NvimTreeFindFile<CR>", ns)

-- Telescope
set("n", "<Leader><Leader>f", ":Telescope find_files<CR>", ns)
set("n", "<Leader><Leader>g", ":Telescope live_grep<CR>", ns)
set("n", "<Leader><Leader>b", ":Telescope buffers<CR>", ns)
set("n", "<Leader><Leader>r", ":Telescope file_browser<CR>", ns)

-- Commentary
set("n", "<Leader>cc", ":Commentary<CR>", ns)
set("v", "<Leader>cc", ":Commentary<CR>", ns)

-- Debugging DAP - old
-- set("n", "<Leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", ns)
-- set("n", "<Leader>B", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Breakpoint condition: '))<CR>", ns)
-- set("n", "<Leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", ns)
-- set("n", "<Leader>dr", ":lua require'dap'.repl.open()<CR>", ns)
--

-- Debugging Vimspector
set("n", "<Leader>da", ":call vimspector#Launch()<CR>", ns)
set("n", "<Leader>dx", ":call vimspector#Reset()<CR>", ns)
set("n", "<Leader>d_", ":call vimspector#Restart()<CR>", ns)
set("n", "<Leader>dn", ":call vimspector#Continue()<CR>", ns)
set("n", "<Leader>drc", ":call vimspector#RunToCursor()<CR>", ns)
set("n", "<Leader>dh", ":call vimspector#ToggleBreakpoint()<CR>", ns)
set("n", "<Leader>de", ":call vimspector#ToggleConditionBreakpoint()<CR>", ns)
set("n", "<Leader>dx", ":call vimspector#ClearBreakpoints()<CR>", ns)
