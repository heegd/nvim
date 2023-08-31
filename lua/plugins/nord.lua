return {
  {
    "gbprod/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nord").setup({
        errors = { mode = "fg" },
        diff = { mode = "fg" },
        styles = {
          comments = { italic = true },
          bufferline = {
            modified = { italic = true }
          }
        }
      })

      vim.cmd [[colorscheme nord]]
    end
  }
}
