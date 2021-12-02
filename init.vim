call plug#begin('~/.local/share/nvim/plugged')
Plug 'shaunsingh/nord.nvim'
Plug 'itchyny/lightline.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'junegunn/fzf'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'tpope/vim-commentary'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-lua/plenary.nvim'
Plug 'akinsho/flutter-tools.nvim'
call plug#end()

" General settings
set number                      " Show line numbers
set hidden                      " Buffers become hidden when abandoned
set ignorecase                  " Ignore case when searching
set smartcase                   " Override 'ignorecase' when the search pattern contains upper case letters.
set showmatch                   " When a bracket is inserted, breifly jump to the matching one
set nowrap                      " Don't wrap lines
set expandtab                   " Substitute spaces for tabs
set shiftwidth=4                " Use 4 spaces for a tab
set tabstop=4                   " Use 4 spaces for a tab
set confirm                     " Instead of failing a command because of unsaved changes, raise a dialogue
set splitright                  " Vertical split to the right by default
set list                        " Show listchars (empty space)
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set cursorline                  " Show cursor line
set termguicolors
set mouse=a
set noswapfile
set autoindent                 " Copy indent from current line when starting a new line
set smartindent
set completeopt=menu,menuone,noselect
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set diffopt+=algorithm:histogram
set diffopt+=indent-heuristic
syntax enable
filetype plugin indent on

set inccommand=nosplit
set breakindent

" Workaround for indentline bug https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
set colorcolumn=99999

let mapleader=" "
nnoremap <leader>s :split<cr>
nnoremap <leader>v :vsplit<cr>
vnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p
noremap Y y$

lua << EOF
--Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
EOF
