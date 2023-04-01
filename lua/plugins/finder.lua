return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      -- https://github.com/nvim-telescope/telescope.nvim/issues/559
      telescope.setup {
        defaults = {
          path_display = { "smart" },
          file_ignore_patterns = { ".git/", "node_modules" },
          preview = false,
          mappings = {
            i = {
              ["<C-y>"] = actions.select_default,
            },
          },
        },
        pickers = {
          find_files = { theme = "dropdown" },
          buffers = { theme = "dropdown" },
          commands = { theme = "dropdown" },
          diagnostics = { theme = "dropdown" },
          live_grep = { theme = "dropdown" },
          help_tags = { theme = "dropdown" },
          loclist = { theme = "dropdown" },
          quickfix = { theme = "dropdown" },
          lsp_references = { theme = "dropdown" },
          lsp_document_symbols = { theme = "dropdown" }
        }
      }

      telescope.load_extension("fzf")
    end
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    build =
    "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
  }
}
