return {
  {
    "kyazdani42/nvim-web-devicons"
  },
  {
    "gbprod/nord.nvim",
    config = function()
      require("nord").setup({
        errors = { mode = "fg" }
      })

      vim.cmd [[colorscheme nord]]

      -- Override the colors for TreesitterContext.
      local nord_colors = require("nord.colors")
      local cmdstr = "highlight TreesitterContext guibg=" .. nord_colors.palette.polar_night.brightest
      vim.cmd(cmdstr)
    end
  }
}
