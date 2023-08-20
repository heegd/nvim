return {
  {
    "numToStr/Comment.nvim",
    dependencies = {
      { "JoosepAlviste/nvim-ts-context-commentstring" },
    },
    config = function()
      local comment = require("Comment")

      comment.setup {
        toggler = {
          ---Line-comment toggle keymap
          line = "<leader>cl",
          ---Block-comment toggle keymap
          block = "<leader>cb",
        },
        opleader = {
          ---Line-comment keymap
          line = "<leader>cl",
          ---Block-comment keymap
          block = "<leader>cb",
        },
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      }
    end,
  }
}
