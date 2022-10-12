vim.g.nord_contrast = false
vim.g.nord_borders = true
vim.g.nord_italic = true
vim.g.nord_uniform_diff_background = true

-- Load the colorscheme
require('nord').set()

-- Override the colors for TreesitterContext. Want fg = nord4_gui, bg = nord1_gui
local nord_colors = require('nord.colors')
local cmdstr = "highlight TreesitterContext gui=NONE guifg=" .. nord_colors.nord4_gui .. " guibg=" .. nord_colors.nord1_gui
