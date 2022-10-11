local nvim_tree = require('nvim-tree')
local nvim_tree_config = require('nvim-tree.config')

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
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
