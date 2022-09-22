-- Editor config
require('user.plugins')
require('user.options')
require('user.keymaps')
require('user.autocommands')
require('user.nord')

-- Plugin config
require('user.autopairs')
require('user.comment')
require('user.completion')
require('user.flutter-tools')
require('user.gitsigns')
require('user.illuminate')
require('user.indentline')
require('user.lspconfig')
require('user.lualine')
require('user.nvimtree')
require('user.telescope')
require('user.toggleterm')
require('user.treesitter')

if (vim.fn.has('win32') == 1)
then
  require('user.windows')
end
