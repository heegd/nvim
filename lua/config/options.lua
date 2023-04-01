vim.opt.clipboard = vim.opt.clipboard + "unnamedplus"
vim.opt.colorcolumn = "999999"
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.confirm = true
vim.opt.cursorline = true
vim.opt.diffopt = vim.opt.diffopt + "algorithm:histogram" + "indent-heuristic"
vim.opt.expandtab = true
vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"
vim.opt.ignorecase = true
vim.opt.iskeyword:append("-")
vim.opt.list = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.showmatch = true
vim.opt.sidescrolloff = 5
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.wrap = false

-- Set the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- disable netrw for nvim-tree
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- folding from treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
