local telescope = require('telescope')
local actions = require('telescope.actions')

-- https://github.com/nvim-telescope/telescope.nvim/issues/559
telescope.setup {
  defaults = {
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },
    preview = false,
  },
  pickers = {
    find_files = { theme = "dropdown" },
    buffers = { theme = "dropdown" },
    commands = { theme = "dropdown" },
    diagnostics = { theme = "dropdown" },
    find_files = { theme = "dropdown" },
    live_grep = { theme = "dropdown" },
    help_tags = { theme = "dropdown" },
    loclist = { theme = "dropdown" },
    quickfix = { theme = "dropdown" },
    lsp_references = { theme = "dropdown" },
    lsp_document_symbols = { theme = "dropdown" }
  }
}
