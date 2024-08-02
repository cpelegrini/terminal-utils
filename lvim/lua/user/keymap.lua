-- KEYMAPPINGS
-- <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- add your own keymapping
lvim.keys.normal_mode["<S-Tab>"] = ":bNext<cr>"
lvim.keys.normal_mode["<S><C-a>"] = ":bprevious<cr>"
vim.keymap.set({ "n", "v" }, "<leader>y", '"*y', { desc = 'Yank selected to OS clipboard' })
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

local mappings = lvim.builtin.which_key.mappings
mappings["m"] = {
   name = "+My Vim Keymaps",
   ["1"] = { "<cmd>tabnew /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils/lvim/My-Vim-Keymaps.md<cr>",
      "Open My Keybindings" },
   a = { "mA", "Mark A" },
   b = { "mB", "Mark B" },
   c = { "mC", "Mark C" },
   d = { "mD", "Mark D" },
   e = { "mE", "Mark E" },
   f = { "mF", "Mark F" },
   g = { "mG", "Mark G" },
   z = {
      name = "+Go to mark",
      a = { "'A", "Go to mark A" },
      b = { "'B", "Go to mark B" },
      c = { "'C", "Go to mark C" },
      d = { "'D", "Go to mark D" },
      e = { "'E", "Go to mark E" },
      f = { "'F", "Go to mark F" },
      g = { "'G", "Go to mark G" },
   }
}
--
-- tabnew /Volumes/ExtraData/Projects/CPelegrini/_git/terminal-utils/lvim/My-Vim-Keymaps.md

-- vim.keymap.set("n", "˙", ":tabprev<CR>", { desc = 'remap: <A-h> Tab previous' })
-- vim.keymap.set("n", "∆", ":tabmove -1<CR>", { desc = 'remap: <A-j> Tab move -1' })
-- vim.keymap.set("n", "˚", ":tabmove +1<CR>", { desc = 'remap: <A-k> Tab move +1' })
-- vim.keymap.set("n", "¬", ":tabnext<CR>", { desc = 'remap: <A-l> Tab next' })

-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
