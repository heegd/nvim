local configs = require('nvim-treesitter.configs')

configs.setup({
	ensure_installed = { "sql", "python", "markdown", "markdown_inline", "lua", "html", "json", -- one of "all" or a list of languages
	ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = {}, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
})
