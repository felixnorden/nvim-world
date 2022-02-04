-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
local luasnip = require 'luasnip'
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

local check_back_space = function()
  local col = vim.fn.col '.' - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s' ~= nil
end

_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-n>'
  elseif luasnip.expand_or_jumpable() then
    return t '<Plug>luasnip-expand-or-jump'
  elseif check_back_space() then
    return t '<Tab>'
  else
    return vim.fn['compe#complete']()
  end
end

_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t '<C-p>'
  elseif luasnip.jumpable(-1) then
    return t '<Plug>luasnip-jump-prev'
  else
    return t '<S-Tab>'
  end
end

-- Map tab to the above tab complete functiones
map('i', '<C-g><Tab>', 'v:lua.tab_complete()', { expr = true, noremap = false })
map('s', 'g<Tab>', 'v:lua.tab_complete()', { expr = true, noremap = false })
map('i', '<C-g><S-Tab>', 'v:lua.s_tab_complete()', { expr = true, noremap = false })
map('s', 'g<S-Tab>', 'v:lua.s_tab_complete()', { expr = true, noremap = false })

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', default_opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', default_opts)
map('n', '<leader>fc', '<cmd>Telescope git_files<cr>', default_opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', default_opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', default_opts)

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
