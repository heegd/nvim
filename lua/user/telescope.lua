local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup {
  defaults = {

    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },
    preview = false

  },
}
