return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        forgefmt = {
          command = "forge",
          args = { "fmt", "--raw", "-" },
          cwd = require("conform.util").root_file({ "foundry.toml" }),
          exit_codes = { 0, 1 },
          -- Only format when no errors are found
          condition = function(ctx)
            local diagnostics = vim.diagnostic.get(ctx.bufnr, { severity = vim.diagnostic.severity.ERROR })
            return #diagnostics == 0
          end,
        },
      },
      formatters_by_ft = {
        solidity = { "forgefmt" },
      },
    },
  },
}
