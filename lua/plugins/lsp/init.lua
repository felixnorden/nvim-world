local has_lsp, lspconfig = pcall(require, "lspconfig")
if not has_lsp then
  return
end

require 'plugins/lsp/lua-lsp'
require 'plugins/lsp/pyright'


local has_lspsaga, saga = pcall(require, "lspsaga")
if has_lspsaga then
  saga.init_lsp_saga {}
end
