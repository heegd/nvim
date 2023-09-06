return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",                  -- Buffer completions
      "hrsh7th/cmp-path",                    -- Path completions
      "L3MON4D3/LuaSnip",                    -- Snippet engine
      "saadparwaiz1/cmp_luasnip",            -- Snippet completions
      "onsails/lspkind.nvim",                -- vs-code like pictograms
      "hrsh7th/cmp-nvim-lsp",                -- LSP completions
      "hrsh7th/cmp-nvim-lsp-signature-help"
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      local lspkind = require("lspkind")

      -- Snippen sources
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_lua").lazy_load({paths={"./snippets"}})
      require("luasnip").filetype_extend("dart", {"flutter"})

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-y>"] = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Insert, select = true },
          ["<C-e>"] = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close() }),
        }),
        formatting = {
          format = lspkind.cmp_format({
            maxsidth = 50,
            ellipsis_char = "..."
          }),
        },
        sources = {
          { name = "nvim_lsp" },
          { name = "nvim_lua" },
          { name = "nvim_lsp_signature_help" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        },
        confirm_opts = {
          behavior = cmp.ConfirmBehavior.Replace,
          select = false,
        },
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        experimental = {
          native_menu = false,
          ghost_text = true
        },
      })
    end
  }
}
