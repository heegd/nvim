return {
  {
    "quarto-dev/quarto-nvim",
    dependencies = {
      { "hrsh7th/nvim-cmp" },
      { "neovim/nvim-lspconfig" },
      { "nvim-treesitter/nvim-treesitter" },
      { "jmbuhr/otter.nvim" },
    },
    config = function()
      require("quarto").setup({
        lspFeatures = {
          enabled = true,
          languages = { "r", "python", "julia" },
          diagnostics = {
            enabled = true,
            triggers = { "BufWritePost" }
          },
          completion = {
            enabled = true
          }
        },
      })
    end
  }
}
