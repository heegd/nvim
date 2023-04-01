return {
  {
    'quarto-dev/quarto-nvim',
    dependencies = {
      { 'hrsh7th/nvim-cmp' },
      { 'neovim/nvim-lspconfig' },
      { 'nvim-treesitter/nvim-treesitter' },
      { 'jmbuhr/otter.nvim' },
      {
        'quarto-dev/quarto-vim',
        ft = 'quarto',
        dependencies = { 'vim-pandoc/vim-pandoc-syntax' },
        -- note: needs additional vim highlighting enabled
        -- for markdown in treesitter.lua
      },
    },
    config = function()
      require('quarto').setup({
        lspFeatures = {
          enabled = true,
          languages = { 'r', 'python', 'julia' },
          diagnostics = {
            enabled = true,
            triggers = { "BufWrite", "TextChangedI", "BufEnter" }
          },
          completion = {
            enabled = true
          }
        }
      })
    end
  }
}
