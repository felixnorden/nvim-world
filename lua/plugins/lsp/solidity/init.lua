local lspconfig = require('lspconfig')

lspconfig.solc.setup{
  root_dir = lspconfig.util.root_pattern('hardhat.config.*', '.git')
}
