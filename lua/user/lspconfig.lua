local nvim_lsp = require('lspconfig')

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local opts = { noremap=true, silent=true }
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', '<leader>lf', function() vim.lsp.buf.format { async = true } end, bufopts)
  vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<leader>le', vim.diagnostic.setloclist, opts)
  vim.keymap.set('n', '<leader>lE', vim.diagnostic.setqflist, opts)
  vim.keymap.set('n', '<leader>lo', vim.lsp.buf.document_symbol, opts)
  vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<leader>lR', vim.lsp.buf.references, bufopts)
  --vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
end

local signs = {
  { name = "DiagnosticSignError", text = "" },
  { name = "DiagnosticSignWarn", text = "" },
  { name = "DiagnosticSignHint", text = "" },
  { name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

local config = {
  virtual_text = false, -- disable virtual text
  signs = {
    active = signs, -- show signs
  },
  update_in_insert = true,
  underline = false,
  severity_sort = true,
  float = {
    focusable = true,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
}

vim.diagnostic.config(config)

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- dartls is set up through flutter-tools.nvim
require("flutter-tools").setup{
  ui = { border = "rounded", },
  lsp = {
    on_attach = on_attach,
    capabilities = capabilities
  }
}

--[[ require('lspconfig')['pyright'].setup{
  on_attach = on_attach,
  capabilities = capabilities,
  setup = setup,
  settings = {
    python = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        typeCheckingMode = "off",
        useLibraryCodeForTypes = true,
      }
    }
  }
} ]]

require('lspconfig')['pylsp'].setup{
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false
        },
        mccabe = {
          enabled = false
        },
        pyflakes = {
          enabled = false
        },
        flake8 = {
          enabled = true
        }
      }
    }
  }
}

-- Need to add cmd to the call for windows
json_lsp_call = "vscode-json-language-server"
if (vim.fn.has('win32') == 1)
then
  json_lsp_call = json_lsp_call .. ".cmd"
end

nvim_lsp.jsonls.setup {
  filetypes = { "json" },
  cmd = { json_lsp_call, "--stdio" },
  on_attach = on_attach,
  init_options = {
    provideFormatter = true,
  },
  single_file_support = true,
  capabilities = capabilities,
}

nvim_lsp.powershell_es.setup {
  bundle_path = 'C:/Tools/PowerShellEditorServices',
  on_attach = on_attach,
  capabilities = capabilities,
}

nvim_lsp.html.setup{
  capabilities=capabilities,
  on_attach=on_attach
}

--[[ local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup {
  debug = false,
  sources = {
    formatting.black.with { extra_args = { "--fast" } },
    --formatting.stylua,
    diagnostics.flake8,
  },
} ]]
