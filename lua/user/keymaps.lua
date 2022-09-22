-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "

-- Common commands
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>q<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>w", "<cmd>w<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>c", "<cmd>Bdelete<cr>", { noremap = true, silent = true })

-- Cursor wrap in wrap mode
vim.api.nvim_set_keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Windows
vim.api.nvim_set_keymap("n", "<C-w><Left>", "<C-w><", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Down>", "<C-w>-", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Up>", "<C-w>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Right>", "<C-w>>", { noremap = true, silent = true })

-- NvimTree
vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ft", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fs", "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fr", "<cmd>lua require('telescope.builtin').lsp_references()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ls", "<cmd>lua require('telescope.builtin').diagnostics()<cr>", { noremap = true, silent = true })

-- Terminal
vim.api.nvim_set_keymap("t", "<esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-[>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-/>", "<cmd>ToggleTerm<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-/>", "<cmd>ToggleTerm<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>te", "<cmd>ToggleTermSendCurrentLine<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>te", ":ToggleTermSendVisualSelection<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<leader>te", ":ToggleTermSendVisualSelection<cr>", { noremap = true, silent = true })

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
