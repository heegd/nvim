local lualine = require('lualine')

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local filename = {
  "filename",
  file_status = true, -- displays file status (readonly status, modified status)
  path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
}

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
  colored = true,
  always_visible = false,
}

local location = {
  "location",
  padding = 0,
}

local function working_directory()
  return vim.fn.getcwd()
end

local function unsaved_buffers()
  local buffers = vim.fn.getbufinfo()
  local changed_buffer_count = 0

  for index, buffer in ipairs(buffers) do
    --[[ print('num: ' .. buffer['bufnr']) ]]
    --[[ print('name: ' .. buffer['name']) ]]
    --[[ print('changed: ' .. buffer['changed']) ]]

    if ((buffer['changed'] == 1 and (buffer['listed'] == 1)))
    then
      changed_buffer_count = changed_buffer_count + 1
    end
  end

  --[[ print('There are ' .. changed_buffer_count .. ' unsaved buffers.') ]]
  return changed_buffer_count .. ' unsaved buffers'
end

--[[ unsaved_buffers() ]]

lualine.setup {
  options = {
    globalstatus = true,
    icons_enabled = true,
    theme = "nord"
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { working_directory },
    lualine_c = { unsaved_buffers },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  winbar = {
    lualine_a = { location, 'progress' },
    lualine_b = { 'filetype', filename },
    lualine_c = { diagnostics },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  inactive_winbar = {
    lualine_a = { location, 'progress' },
    lualine_b = { 'filetype', filename },
    lualine_c = { diagnostics },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  extensions = {
    'nvim-tree',
    'toggleterm'
  }
}
