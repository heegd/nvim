-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "

-- Cursor wrap in wrap mode
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Resize with arrows
vim.api.nvim_set_keymap("n", "<C-w><Left>", "<C-w><", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Down>", "<C-w>-", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Up>", "<C-w>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Right>", "<C-w>>", { noremap = true, silent = true })

-- Navigate buffers
--[[ vim.api.nvim_set_keymap("n", "<M-l>", ":bnext<CR>", { noremap = true, silent = true }) ]]
--[[ vim.api.nvim_set_keymap("n", "<M-h>", ":bprevious<CR>", { noremap = true, silent = true }) ]]

-- Create splits
vim.api.nvim_set_keymap('n', '<leader>sh', ":split<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sv', ":vsplit<cr>", { noremap = true, silent = true })

-- Close buffers
vim.api.nvim_set_keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", { noremap = true, silent = true })

-- NvimTree
vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ft", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fp", ":Telescope projects<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })

-- DAP
-- vim.api.nvim_set_keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", { noremap = true, silent = true })

