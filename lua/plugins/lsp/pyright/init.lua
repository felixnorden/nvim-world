local has_cmp, cmp = pcall(require, "cmp_nvim_lsp")
if has_cmp then
  local capabilities = cmp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
else
  require('lspconfig')['pyright'].setup {
  }
end
