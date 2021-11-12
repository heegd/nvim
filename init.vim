call plug#begin('~/.local/share/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'junegunn/fzf'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
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
set signcolumn=yes
syntax enable
filetype plugin indent on

let mapleader=" "
nnoremap <leader>s :split<cr>
nnoremap <leader>v :vsplit<cr>
vnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p
noremap Y y$
