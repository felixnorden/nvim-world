local lspconfig = require('lspconfig')

return {
  cmd = { 'nomicfoundation-solidity-language-server', '--stdio' },
  filetypes = { 'solidity' },
  root_dir = lspconfig.util.find_git_ancestor,
  single_file_support = true,
}
