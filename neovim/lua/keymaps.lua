-- After update, execute: :source $MYVIMRC<CR>
-- to reload without close vim
--
local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }


-- Command
-- set("n", ";", ":", { noremap = true })
-- set("n", "<C-s>", ":w<CR>", ns) -- Save
set("n", "<Space>h", "_", { noremap = true }) -- Begin of line
set("n", "<Space>l", "$", { noremap = true }) -- End of line
set("n", "<Space>j", "<C-d>", { noremap = true }) -- Page down
set("n", "<Space>k", "<C-u>", { noremap = true }) -- Page up
set("n", "<C-S-Down>", ":m+1<CR>", ns) -- Move line down
set("n", "<C-S-Up>", ":m-2<CR>", ns) -- Move line up
set("i", "<C-S-Down>", "<Esc>:m+1<CR>", ns) -- Move line down
set("i", "<C-S-Up>", "<Esc>:m-2<CR>", ns) -- Move line up
set("i", "<F12>", "<Esc>:set invrelativenumber<CR>", ns) -- invert relative number show
set("n", "<F12>", "<Esc>:set invrelativenumber<CR>", ns) -- invert relative number show


-- Terminal
set("t", "<Esc>", "<C-\\><C-n><C-w><C-w>", ns)



-- Clean Search
-- set("n", "<Leader><Leader><Space>", ":let @/=''<CR>", ns)
set("n", "<Leader><Leader><Space>", ":nohl<CR>", ns)

-- Panes
set("n", "<Space>m", "<C-w>w", ns) -- go to next pane
-- set("n", "<C-j>", "<C-w>j", ns)
-- set("n", "<C-k>", "<C-w>k", ns)
-- set("n", "<C-h>", "<C-w>h", ns)
-- set("n", "<C-l>", "<C-w>l", ns)
set("n", "<Leader>h", ":<C-u>split<CR>", ns)
set("n", "<Leader>v", ":<C-u>vsplit<CR>", ns)

-- Moving in insert mode using mac Alt character
set("i", "˙", "<C-o>h", ns)
set("i", "∆", "<C-o>j", ns)
set("i", "˚", "<C-o>k", ns)
set("i", "¬", "<C-o>l", ns)


-- Buffers
set("n", "<Tab>", ":BufferLineCycleNext<CR>", ns)
set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", ns)
set("n", "<Leader>1", ":BufferLineGoToBuffer 1<CR>", ns)
set("n", "<Leader>2", ":BufferLineGoToBuffer 2<CR>", ns)
set("n", "<Leader>3", ":BufferLineGoToBuffer 3<CR>", ns)
set("n", "<Leader>4", ":BufferLineGoToBuffer 4<CR>", ns)
set("n", "<Leader>5", ":BufferLineGoToBuffer 5<CR>", ns)
set("n", "<Leader>6", ":BufferLineGoToBuffer 6<CR>", ns)
set("n", "<Leader>7", ":BufferLineGoToBuffer 7<CR>", ns)
set("n", "<Leader>8", ":BufferLineGoToBuffer 8<CR>", ns)
set("n", "<Leader>9", ":BufferLineGoToBuffer 9<CR>", ns)
set("n", "<Leader>q", ":Bclose<CR>", ns)

-- set("n", "<C-d>", ":bd<CR>", ns)
set("n", "<C-t>", ":tabnew<CR>", ns)

-- Nvim Tree
set("n", "<C-n>", ":NvimTreeToggle<CR>", ns)
set("n", "<Space>n", ":NvimTreeToggle<CR>", ns)
set("n", "<Leader>n", ":NvimTreeFindFile<CR>", ns)

-- Telescope
set("n", "<Leader><Leader>f", ":Telescope find_files<CR>", ns)
set("n", "<Leader><Leader>g", ":Telescope live_grep<CR>", ns)
set("n", "<Leader><Leader>b", ":Telescope buffers<CR>", ns)
set("n", "<Leader><Leader>r", ":Telescope file_browser<CR>", ns)

-- Commentary
set("n", "<Leader>c", ":Commentary<CR>", ns)
set("v", "<Leader>c", ":Commentary<CR>", ns)


-- Debugging Vimspector
-- set("n", "<Leader>da", ":call vimspector#Launch()<CR>", ns)
-- set("n", "<Leader>dx", ":call vimspector#Reset()<CR>", ns)
-- set("n", "<Leader>d_", ":call vimspector#Restart()<CR>", ns)
-- set("n", "<Leader>dn", ":call vimspector#Continue()<CR>", ns)
-- set("n", "<Leader>drc", ":call vimspector#RunToCursor()<CR>", ns)
-- set("n", "<Leader>dh", ":call vimspector#ToggleBreakpoint()<CR>", ns)
-- set("n", "<Leader>de", ":call vimspector#ToggleConditionBreakpoint()<CR>", ns)
-- set("n", "<Leader>dx", ":call vimspector#ClearBreakpoints()<CR>", ns)
