
-- KEYMAPPINGS
-- <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-Tab>"] = ":bNext<cr>"
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = 'Yank selected to OS clipboard' })
vim.keymap.set({ "n", "v" }, "<leader>tn", ":tabNext<cr>", { desc = 'TAB: Go to next' })
vim.keymap.set({ "n", "v" }, "<leader>tp", ":tabprevious<cr>", { desc = 'TAB: Go to previous' })
vim.keymap.set({ "n", "v" }, "<leader>tt", ":tabnew<cr>", { desc = 'TAB: Create new' })
vim.keymap.set({ "n", "v" }, "<leader>tc", ":tabclose<cr>", { desc = 'TAB: Close current' })



-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
