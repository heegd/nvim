return {
  {
    'windwp/nvim-autopairs',
    config = function()
      local autopairs = require('nvim-autopairs')
      autopairs.setup {
        check_ts = true, -- treesitter integration
      }

      -- If you want insert `(` after select function or method item
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )
    end
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      local indent_blankline = require('indent_blankline')

      indent_blankline.setup {
        char = "▏",
        show_trailing_blankline_indent = false,
        show_first_indent_level = true,
        use_treesitter = true,
        show_current_context = true,
        buftype_exclude = { "terminal", "nofile" },
        filetype_exclude = {
          "help",
          "packer",
          "NvimTree",
        },
      }
    end
  },
  {
    'folke/which-key.nvim',
    config = function()
      require("which-key").setup {}
    end
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      local comment = require('Comment')

      comment.setup {
        toggler = {
          ---Line-comment toggle keymap
          line = 'gcl',
          ---Block-comment toggle keymap
          block = 'gcb',
        },
        opleader = {
          ---Line-comment keymap
          line = 'gcl',
          ---Block-comment keymap
          block = 'gcb',
        },
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      }
    end
  },
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
  }
}
