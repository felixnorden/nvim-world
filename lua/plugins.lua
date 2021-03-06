local packer = require 'packer'
local use = packer.use
packer.startup(function()
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use 'bluz71/vim-nightfly-guicolors'
  use 'yonlu/omni.vim'
  use 'matsuuu/pinkmare'
  use 'folke/tokyonight.nvim'
  use 'shaunsingh/moonlight.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      'nvim-treesitter/nvim-treesitter-refactor',
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    run = ':TSUpdate',
  }

  -- Which Key
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Startup Screen
  use {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
      require"startup".setup()
    end
  }

  use {
    'github/copilot.vim',
    run = ':Copilot setup'
  }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  } 


  -- Themes
  use {"ayu-theme/ayu-vim"}
  use 'EdenEast/nightfox.nvim'

  -- Telescope
  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' }} }
  --
  -- Completions and Snippets
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer'   }
  use { 'hrsh7th/cmp-path'     }
  use { 'hrsh7th/cmp-cmdline'  }
  use { 'hrsh7th/nvim-cmp'     }
  use { 'hrsh7th/cmp-vsnip' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'windwp/nvim-autopairs' }

end)
