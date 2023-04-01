-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })

-- Common commands
vim.api.nvim_set_keymap("n", "<leader>q", ":q<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Q", ":qa<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>w", ":w<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>W", ":wa<cr>", { noremap = true, silent = true })

-- Cursor wrap in wrap mode
--[[ vim.api.nvim_set_keymap("n", "k", "v:count == 0 ? "gk" : "k"", { noremap = true, expr = true, silent = true }) ]]
--[[ vim.api.nvim_set_keymap("n", "j", "v:count == 0 ? "gj" : "j"", { noremap = true, expr = true, silent = true }) ]]
-- Windows
vim.api.nvim_set_keymap("n", "<C-w><Left>", "<C-w><", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Down>", "<C-w>-", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Up>", "<C-w>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Right>", "<C-w>>", { noremap = true, silent = true })

-- NvimTree
vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>",
{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fc", "<cmd>lua require('telescope.builtin').commands()<cr>",
{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fd", "<cmd>lua require('telescope.builtin').diagnostics()<cr>",
{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>",
{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>",
{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>",
{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fl", "<cmd>lua require('telescope.builtin').loclist()<cr>",
{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fq", "<cmd>lua require('telescope.builtin').quickfix()<cr>",
{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fr", "<cmd>lua require('telescope.builtin').lsp_references()<cr>",
{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fs", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>",
{ noremap = true, silent = true })

-- Terminal
vim.api.nvim_set_keymap("t", "<C-[>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ts", "<cmd>ToggleTermSendCurrentLine<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>ts", ":ToggleTermSendVisualSelection<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<leader>ts", ":ToggleTermSendVisualSelection<cr>", { noremap = true, silent = true })

-- Quickfix List
vim.api.nvim_set_keymap("n", "<leader>Co", ":copen<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Cc", ":cclose<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Cn", ":cnext<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Cp", ":cprevious<cr>", { noremap = true, silent = true })

-- Location List
vim.api.nvim_set_keymap("n", "<leader>co", ":lopen<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cc", ":lclose<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cn", ":lnext<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cp", ":lprevious<cr>", { noremap = true, silent = true })

-- DAP
-- vim.api.nvim_set_keymap("n", "<leader>db", "<cmd>lua require"dap".toggle_breakpoint()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>dc", "<cmd>lua require"dap".continue()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>di", "<cmd>lua require"dap".step_into()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>do", "<cmd>lua require"dap".step_over()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>dO", "<cmd>lua require"dap".step_out()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>dr", "<cmd>lua require"dap".repl.toggle()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>dl", "<cmd>lua require"dap".run_last()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>du", "<cmd>lua require"dapui".toggle()<cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>dt", "<cmd>lua require"dap".terminate()<cr>", { noremap = true, silent = true })
