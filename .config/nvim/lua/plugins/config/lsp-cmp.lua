local present, cmp = pcall(require, "cmp")

if not present then
   return
end

-- LspKind
require('lspkind').init({
    with_text = true,
    preset = 'codicons',
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})

require 'lspsaga'.init_lsp_saga {
    use_saga_diagnostic_sign = true,
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
}

vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.shortmess = "filnxtToOFAc"

cmp.setup {
    snippet = {
       expand = function(args)
          require("luasnip").lsp_expand(args.body)
       end,
    },
    formatting = {
        format = require('lspkind').cmp_format(),
    },
    documentation = true,
    mapping = {
       -- ["<C-p>"] = cmp.mapping.select_prev_item(),
       -- ["<C-n>"] = cmp.mapping.select_next_item(),
       ["<S-Tab>"] = cmp.mapping.select_prev_item(),
       ["<Tab>"] = cmp.mapping.select_next_item(),
       ["<C-d>"] = cmp.mapping.scroll_docs(-4),
       ["<C-f>"] = cmp.mapping.scroll_docs(4),
       ["<C-Space>"] = cmp.mapping.complete(),
       ["<C-e>"] = cmp.mapping.close(),
       ["<CR>"] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
       },
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'path' },
      { name = 'treesitter' },
      { name = 'calc' },
      { name = 'tags' },
      { name = 'luasnip' }, -- For luasnip users.
    }, {
      { name = 'buffer' },
    })
}

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
})
