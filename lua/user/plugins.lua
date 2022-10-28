local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

-- Install packer
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
  
  -- Common
  use {'nvim-lua/plenary.nvim'} -- common lua functions used by various plugins
  use {'kyazdani42/nvim-web-devicons'}

  -- Misc
  use {'shaunsingh/nord.nvim'} -- Nord colorscheme
  use {'windwp/nvim-autopairs'} -- Auto-close pairs
  use {'kyazdani42/nvim-tree.lua'} -- File tree
  use {'lukas-reineke/indent-blankline.nvim'} -- Indent lines
  use {'akinsho/flutter-tools.nvim'} -- Flutter dev integration
  use {'RRethy/vim-illuminate'} -- Highlight instances under cursor
  use {'lewis6991/gitsigns.nvim'} -- Git integration
  use {'moll/vim-bbye'} -- Close buffers without closing windows
  use {'akinsho/toggleterm.nvim'} -- Popup terminal
  use {'nvim-telescope/telescope.nvim'} -- Finder

  -- Statusline
  use {'nvim-lualine/lualine.nvim'} -- Statusline
  use {'arkav/lualine-lsp-progress'}

  -- Comments
  use {'numToStr/Comment.nvim'}
  use {'JoosepAlviste/nvim-ts-context-commentstring'} -- Treesitter integration

  -- Snippets
  use {'L3MON4D3/LuaSnip'}
  use {'rafamadriz/friendly-snippets'} -- A bunch of snippets to use

  -- cmp plugins
  use {'hrsh7th/nvim-cmp'} -- The completion plugin
  use {'hrsh7th/cmp-buffer'} -- Buffer completions
  use {'hrsh7th/cmp-path'} -- Path completions
  use {'saadparwaiz1/cmp_luasnip'} -- Snippet completions
  use {'hrsh7th/cmp-nvim-lsp'} -- Lsp completions
  use {'hrsh7th/cmp-nvim-lsp-signature-help'} -- Lsp signature completion
  use {'hrsh7th/cmp-nvim-lua'} -- Lua completions

  -- Lsp
  use {'neovim/nvim-lspconfig'}
  use {'jose-elias-alvarez/null-ls.nvim'}

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {'nvim-treesitter/nvim-treesitter-context'}

  use {'junegunn/fzf'}

end)
