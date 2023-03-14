-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })


-- LSPSaga
map('n', 'gh', '<cmd>Lspsaga lsp_finder<cr>', default_opts)
map('n', 'K', '<cmd>Lspsaga hover_doc<cr>', default_opts)

-- scroll down hover doc or scroll in definition preview
map('n', '<C-f>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<cr>', default_opts)

-- scroll up hover doc
map('n', '<C-b>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<cr>', default_opts)

map('n', '<leader>cd', '<cmd>Lspsaga show_line_diagnostics<cr>', default_opts)
-- code action
map('n', '<leader>ca', '<cmd>Lspsaga code_action<cr>', default_opts)
map('v', '<leader>ca', '<cmd>Lspsaga range_code_action<cr>', default_opts)
map('n', 'gr', '<cmd>Lspsaga rename<cr>', default_opts)
