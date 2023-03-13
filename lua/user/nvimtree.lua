local nvim_tree = require('nvim-tree')
local nvim_tree_config = require('nvim-tree.config')

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  renderer = {
    root_folder_modifier = ":t",
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
  },
  view = {
    adaptive_size = true,
    side = "left",
  },
  actions = {
    change_dir = {
      enable = false
    }
  }
}
