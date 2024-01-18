local cmp = require "cmp"

return {
  "hrsh7th/nvim-cmp",
  opts = {
    mapping = {
      ["<C-k>"] = cmp.mapping.select_prev_item(),
      ["<C-j>"] = cmp.mapping.select_next_item(),
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
    },
    sources = {
      { name = "nvim_lsp", priority = "10" },
      { name = "nvim_lua", priority = "9" },
      { name = "luasnip", priority = "9" },
      { name = "buffer", priority = "8" },
      { name = "path", priority = "7" },
    },
    sorting = {
      priority_weight = 1.0,
      comparators = {
        cmp.config.compare.score,
        cmp.config.compare.recently_used,
        cmp.config.compare.locality,
        cmp.config.compare.offset,
        cmp.config.compare.order,
        cmp.config.compare.sort_text,
        cmp.config.compare.exact,
        cmp.config.compare.kind,
      },
    },
  },
  config = function(_, opts)
    require("cmp").setup(opts)

    require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
      sources = {
        { name = "dap" },
      },
    })
  end,
}
