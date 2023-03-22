-- lf
require('toggleterm').setup({
   size = function(term)
      if term.direction == 'horizontal' then
         return 15
      elseif term.direction == 'vertical' then
         return vim.o.columns * 0.4
      end
   end,
   hide_numbers = false,
   shade_terminals = true,
   start_in_insert = true,
   insert_mappings = false, -- no default mapping
   persist_size = true,
   direction = 'horizontal',
   close_on_exit = true,
   shell = vim.o.shell,
   float_opts = {
      border = 'rounded',
      highlights = {
         border = 'white',
         background = '#201D2E',
      },
   },
})

require("lf").setup({
  default_cmd = "lf", -- default `lf` command
  default_action = "edit", -- default action when `Lf` opens a file
  default_actions = { -- default action keybindings
    ["<C-t>"] = "tabedit",
    ["<C-x>"] = "split",
    ["<C-v>"] = "vsplit",
    ["<C-o>"] = "tab drop",
  },

  winblend = 20, -- psuedotransparency level
  dir = "", -- directory where `lf` starts ('gwd' is git-working-directory, "" is CWD)
  direction = "float", -- window type: float horizontal vertical
  border = "single", -- border kind: single double shadow curved
  height = 0.80, -- height of the *floating* window
  width = 0.85, -- width of the *floating* window
  escape_quit = true, -- map escape to the quit command (so it doesn't go into a meta normal mode)
  focus_on_open = false, -- focus the current file when opening Lf (experimental)
  mappings = true, -- whether terminal buffer mapping is enabled
  tmux = false, -- tmux statusline can be disabled on opening of Lf
  highlights = { -- highlights passed to toggleterm
    Normal = { guibg = '#201D2E' },
    NormalFloat = { link = 'Normal' },
    FloatBorder = {
      guifg = 'none',
      guibg = '#201D2E'
    }
  },

})
