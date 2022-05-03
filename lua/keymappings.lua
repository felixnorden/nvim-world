-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

local cmp = require('cmp')
cmp.setup {
  completion = {
    autocomplete = false, -- disable auto-completion.
  },
}

_G.vimrc = _G.vimrc or {}
_G.vimrc.cmp = _G.vimrc.cmp or {}
_G.vimrc.cmp.lsp = function()
  cmp.complete({
    config = {
      sources = {
        { name = 'nvim_lsp' }
      }
    }
  })
end
_G.vimrc.cmp.snippet = function()
  cmp.complete({
    config = {
      sources = {
        { name = 'vsnip' }
      }
    }
  })
end


map('i', '<C-x><C-o>', '<Cmd>lua vimrc.cmp.lsp()<CR>', default_opts)
map('i', '<C-x><C-s>', '<Cmd>lua vimrc.cmp.snippet()<CR>', default_opts)

-- Map tab to the above tab complete functiones
--map('i', '<C><Tab>', 'v:lua.tab_complete()', { expr = true, noremap = false })
--map('s', '<Tab>', 'v:lua.tab_complete()', { expr = true, noremap = false })
--map('i', '<C><S-Tab>', 'v:lua.s_tab_complete()', { expr = true, noremap = false })
--map('s', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true, noremap = false })

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
