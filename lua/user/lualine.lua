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

lualine.setup {
  options = {
    globalstatus = true,
    icons_enabled = true,
    theme = "nord"
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { working_directory },
    lualine_c = {},
    --[[ lualine_x = { filename, 'filetype' }, ]]
    --[[ lualine_y = { diagnostics }, ]]
    --[[ lualine_z = { location, 'progress' } ]]
  },
  winbar = {
    lualine_b = { 'filetype', filename },
    lualine_c = { diagnostics },
    lualine_a = { location, 'progress' }
  },
  inactive_winbar = {
    lualine_b = { 'filetype', filename },
    lualine_c = { diagnostics },
    lualine_a = { location, 'progress' }
  },
  extensions = {
    'nvim-tree',
    'toggleterm'
  }
}
