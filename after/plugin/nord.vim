lua << EOF
vim.g.nord_contrast = true
vim.g.nord_borders = true
vim.g.nord_italic = true

-- Load the colorscheme
require('nord').set()
EOF
