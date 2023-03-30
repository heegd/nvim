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
