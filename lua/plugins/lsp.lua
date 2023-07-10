return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "marksman",
        "pyright",
        "solidity_ls_nomicfoundation",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        solidity_ls_nomicfoundation = {},
        pyright = {},
      },
    },
  },
}
