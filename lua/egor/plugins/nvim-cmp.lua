local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  sources = {
   -- { name = 'nvim_lsp' },
    { name = 'buffer', keyword_length = 4 },
    { pnme = 'path' },
    { name = 'tags' },
    { name = 'luasnip' },
  },
})
