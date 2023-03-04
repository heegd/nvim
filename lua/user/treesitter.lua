local configs = require('nvim-treesitter.configs')

configs.setup({
	ensure_installed = { "sql", "python", "markdown", "markdown_inline", "lua", "html", "dart" }, -- one of "all" or a list of languages
	ignore_install = { "phpdoc", "json" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = {}, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css", "dart" } },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<leader>v",
      node_incremental = "<C-n>",
      scope_incremental = "<C-s>",
      node_decremental = "<C-p>",
    },
  },
})

require'treesitter-context'.setup() 
