-- Term GUI colors
vim.o.termguicolors = true

--  Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--  Do not save when switching buffers
vim.o.hidden = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Set highlight on search
vim.o.hlsearch = false

-- Relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Code folding
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

-- Use Treesitter instead
vim.o.syntax = 'disable'

-- Spaces FTW
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

-- Colorscheme
vim.cmd('set termguicolors')
vim.cmd('colorscheme moonlight')

-- Extra gutter space for lsp
vim.o.numberwidth = 4
vim.o.signcolumn = 'yes'

vim.cmd('set completeopt=menu,menuone,noselect')

-- Add autocommands

local au = require('au')

au({'BufNewFile', 'BufRead'}, {
  '*.sol,*.solidity',
  function()
    vim.bo.filetype = 'solidity'
  end
})
