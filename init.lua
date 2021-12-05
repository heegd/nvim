-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

local use = require('packer').use
require('packer').startup(function()
  use {'wbthomason/packer.nvim'}
  use {'shaunsingh/nord.nvim'}
  use {'itchyny/lightline.vim'}
  use {'neovim/nvim-lspconfig'}
  use {'junegunn/fzf'}
  use {'hrsh7th/vim-vsnip'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-vsnip'}
  use {'tpope/vim-commentary'}
  use {'lukas-reineke/indent-blankline.nvim'}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {'nvim-lua/plenary.nvim'}
  use {'akinsho/flutter-tools.nvim'}
end)

-- Options
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.confirm = true
vim.opt.splitright = true
vim.opt.list = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.mouse = 'a'
vim.opt.swapfile = false
vim.opt.smartindent = true
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.grepprg = 'rg --vimgrep --no-heading --smart-case'
vim.opt.diffopt = vim.opt.diffopt + 'algorithm:histogram' + 'indent-heuristic'
vim.opt.clipboard = vim.opt.clipboard + 'unnamedplus'
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '999999'

-- Variables
vim.g.mapleader = ' '

-- Keymaps
vim.api.nvim_set_keymap('n', '<leader>s', ":split<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>v', ":vsplit<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Configure plugins
require ('plugin-config.cmp-nvim-lsp')
require ('plugin-config.flutter-tools')
require ('plugin-config.lightline')
require ('plugin-config.nord')
require ('plugin-config.nvim-lspconfig')
require ('plugin-config.nvim-treesitter')
