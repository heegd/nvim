return {
  {
    'akinsho/toggleterm.nvim',
    config = function()
      local toggleterm = require('toggleterm')

      toggleterm.setup({
        open_mapping = [[<C-\>]],
        hide_numbers = true,
        shade_terminals = true,
        -- shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = "horizontal",
        close_on_exit = true,
        shell = vim.o.shell,
      })
    end
  }
}
