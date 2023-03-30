-- Editor config
require('user.plugins')
require('user.options')
if (vim.fn.has('win32') == 1)
then
  require('user.windows')
end
require('user.keymaps')
require('user.autocommands')
require('user.nord')

-- Plugin config
require('user.autopairs')
require('user.comment')
require('user.completion')
require('user.indentline')
require('user.lspconfig')
require('user.lualine')
require('user.nvimtree')
require('user.telescope')
require('user.toggleterm')
require('user.treesitter')
require('user.whichkey')
require('user.quarto')
require('user.symbols')
