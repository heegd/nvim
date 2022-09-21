-- Set the shell to pwsh
vim.cmd [[
  let &shell = 'pwsh'
  let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
  let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
  let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
  set shellquote= shellxquote=
]]

-- Suspend doesn't work on windows and just locks everything up so remap to no operation.
vim.api.nvim_set_keymap('n', '<c-z>', "<nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<c-z>', "<nop>", { noremap = true, silent = true })
--
-- Reset tmp so that nvim doesn't fail after the windows temp folder is emptied
vim.cmd [[
  let $TMP = 'D:\\Tmp'
]]
