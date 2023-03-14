-- Term GUI colors
vim.o.termguicolors = true

--  Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

--  Do not save when switching buffers
vim.o.hidden = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Set highlight on search
vim.o.hlsearch = false

-- Relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Code folding
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Use Treesitter instead
vim.o.syntax = 'disable'

-- Spaces FTW
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

-- Colorscheme
vim.cmd('set termguicolors')

-- Extra gutter space for lsp
vim.o.numberwidth = 4
vim.o.signcolumn = 'yes'

-- Add autocommands

local au = require('au')

au({'BufNewFile', 'BufRead'}, {
  '*.sol,*.solidity',
  function()
    vim.bo.filetype = 'solidity'
  end
})
