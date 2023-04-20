return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "nvim-treesitter/nvim-treesitter-textobjects" }
    },
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "sql", "python", "markdown", "markdown_inline", "html", "dart", "yaml"},
        ignore_install = { "phpdoc", "json" }, -- List of parsers to ignore installing
        highlight = {
          enable = true,                       -- false will disable the whole extension
          disable = {},                        -- list of language that will be disabled
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
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        }
      })
    end
  }
}
