return {
  {
    "kyazdani42/nvim-web-devicons"
  },
  {
    "gbprod/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nord").setup({
        errors = { mode = "fg" }
      })

      vim.cmd [[colorscheme nord]]
    end
  }
}
