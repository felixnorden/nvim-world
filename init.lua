
-- Ensure packer is installed
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'config'

require 'plugins'

require 'keymappings'

require 'plugins/lsp'

require 'plugins/startup'

require 'plugins/treesitter'

require 'plugins/telescope'

require 'plugins/lspsaga'

require 'plugins/lualine'

require 'plugins/cmp'

require 'plugins/autopairs'
