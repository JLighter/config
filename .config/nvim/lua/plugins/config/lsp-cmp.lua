local present, cmp = pcall(require, "cmp")

require 'lspsaga'.init_lsp_saga {
  use_saga_diagnostic_sign = true,
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
}

local function border(hl_name)
  return {
    { "┌", hl_name },
    { "─", hl_name },
    { "┐", hl_name },
    { "│", hl_name },
    { "┘", hl_name },
    { "─", hl_name },
    { "└", hl_name },
    { "│", hl_name },
  }
end

vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.shortmess = "filnxtToOFAc"

local mapping = {
  ["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
  ["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
  ["<C-d>"] = cmp.mapping.scroll_docs(-4),
  ["<C-u>"] = cmp.mapping.scroll_docs(4),
  ["<C-Space>"] = cmp.mapping.complete(),
  ["<C-e>"] = cmp.mapping.close(),
  ["<CR>"] = cmp.mapping.confirm {
    behavior = cmp.ConfirmBehavior.Replace,
    select = true,
  },
  ["<C-l>"] = cmp.mapping(function(fallback)
    vim.api.nvim_feedkeys(vim.fn['copilot#Accept'](vim.api.nvim_replace_termcodes('<Tab>', true, true, true)), 'n', true)
  end)
}

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  formatting = {
    format = require('lspkind').cmp_format(),
  },
  window = {
    completion = {
      col_offset = 3,
      border = border "CmpBorder",
      winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
    },
    documentation = {
      border = border "CmpDocBorder",
    },
  },
  mapping = mapping,
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'git' },
  },{
    { name = 'buffer' },
    { name = 'path' },
  })
}

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = mapping,
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = mapping,
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  mapping = mapping,
  sources = cmp.config.sources({
    { name = 'git' },
  }, {
    { name = 'buffer' },
    { name = 'path' },
  })
})
