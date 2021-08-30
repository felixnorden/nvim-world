local packer = require 'packer'
local use = packer.use
packer.startup(function()
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      'nvim-treesitter/nvim-treesitter-refactor',
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    run = ':TSUpdate',
  } 

  -- LSP
  use { 'neovim/nvim-lspconfig' }

  -- Galaxyline
  use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    config = function() require'my_statusline' end,
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Telescope
  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' }} }
  -- Completions and Snippets
  use { 'hrsh7th/nvim-compe' }
  use { 'L3MON4D3/LuaSnip' }
end)
