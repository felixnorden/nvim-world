-- Ensure packer is installed
local execute = vim.api.nvim_command

-- Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


require 'config'

require 'plugins'

-- Colorscheme
require 'moonlight'.set()

require 'keymappings'

require 'plugins/lsp'

require 'plugins/startup'

require 'plugins/treesitter'

require 'plugins/telescope'

require 'plugins/cmp'

require 'plugins/autopairs'

require 'plugins/lualine'

