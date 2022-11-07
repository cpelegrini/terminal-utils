local terminal = {
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return 80
    end
  end,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = false,
  shading_factor = 1,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = "vertical", --"float, vertical, horizontal",
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = "curved",
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal"
    },
  }, 
  highlights = {
    Normal = {
      guibg = "#000000"
    },
  }, 
}
require('toggleterm').setup(terminal)

-- Custom terminals 
local Terminal  = require('toggleterm.terminal').Terminal

-- lazygit
local lazygit = Terminal:new({ cmd = "lazygit", direction = "float", hidden = true })
vim.api.nvim_create_user_command('ToggleLazyGit', 
  function ()
    lazygit:toggle()  
  end, {}
)

-- node
local node = Terminal:new({ cmd = "node", direction = "float", hidden = true })
vim.api.nvim_create_user_command('ToggleNode', 
  function ()
    node:toggle()  
  end, {}
)

-- node
local top = Terminal:new({ cmd = "top", direction = "float", hidden = true })
vim.api.nvim_create_user_command('ToggleTop', 
  function ()
    top:toggle()  
  end, {}
)

-- Diffview
local diffView = Terminal:new({ cmd = "DiffviewOpen", direction = "float", hidden = true })
vim.api.nvim_create_user_command('ToggleDiff', 
  function ()
    diffView:toggle()  
  end, {}
)

