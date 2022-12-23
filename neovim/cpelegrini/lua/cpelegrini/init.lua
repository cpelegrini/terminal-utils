require('cpelegrini.packer')
-- if packer is not installed, then not load follow modules
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then  
  return
end

require('cpelegrini.set')
require('cpelegrini.remap')