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
