-- KEYMAPPINGS
-- <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-Tab>"] = ":bNext<cr>"
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = 'Yank selected to OS clipboard' })
vim.keymap.set({ "n", "v" }, "¬", "gt", { desc = 'TAB: Alt+l - Go to next' })
vim.keymap.set({ "n", "v" }, "˙", "gT", { desc = 'TAB: Alt+h - Go to previous' })
vim.keymap.set({ "n", "v" }, "≠", ":tabnew<cr>", { desc = 'TAB: Alt+"+" - Create new' })
vim.keymap.set({ "n", "v" }, "–", ":tabclose<cr>", { desc = 'TAB: Alt+"-" - Close current' })


lvim.builtin.which_key.mappings["t"] = {
   name = "+Terminal",
   f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
   v = { "<cmd>2ToggleTerm size=60 direction=vertical<cr>", "Split vertical" },
   h = { "<cmd>2ToggleTerm size=10 direction=horizontal<cr>", "Split horizontal" },
   t = { "<cmd>2ToggleTerm direction=tab<cr>", "Split tab" },
}

-- vim.keymap.set("n", "˙", ":tabprev<CR>", { desc = 'remap: <A-h> Tab previous' })
-- vim.keymap.set("n", "∆", ":tabmove -1<CR>", { desc = 'remap: <A-j> Tab move -1' })
-- vim.keymap.set("n", "˚", ":tabmove +1<CR>", { desc = 'remap: <A-k> Tab move +1' })
-- vim.keymap.set("n", "¬", ":tabnext<CR>", { desc = 'remap: <A-l> Tab next' })

-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
