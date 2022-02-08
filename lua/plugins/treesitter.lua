require'nvim-treesitter.configs'.setup {
	ensure_installed = "maintained",
	highlight = {
		enable = true,
		additional_vim_regex_highlighting=false,
	},
  indent = {
    enable = true
  },
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			node_decremental = "grm",
			scope_incremental = "grc",
			scope_decrenental = "grv",
		}
	}
}

require "nvim-treesitter.parsers".get_parser_configs().Solidity = {
  install_info = {
    url = "https://github.com/JoranHonig/tree-sitter-solidity",
    files = {"src/parser.c"},
    requires_generate_from_grammar = true,
  },
  filetype = 'solidity'
}
