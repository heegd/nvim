return {
  {
    "kyazdani42/nvim-tree.lua",
    dependencies = {
      { "kyazdani42/nvim-web-devicons" }
    },
    config = function()
      local nvim_tree = require("nvim-tree")

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
    end
  }
}
