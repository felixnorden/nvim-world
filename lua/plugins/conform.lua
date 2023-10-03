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
        },
      },
      formatters_by_ft = {
        solidity = { "forgefmt" },
      },
    },
  },
}
