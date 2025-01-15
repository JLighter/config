return {
  "saghen/blink.cmp",
  keys = {
    { "D", ":lua vim.diagnostic.open_float({focusable = false, close_events = {'BufLeave', 'CursorMoved', 'InsertEnter', 'FocusLost'}, header = '', source = 'if_many', prefix = ' ', suffix = ' ', scope = 'cursor', border = 'solid'})<CR>", desc = "Show diagnostic", nowait = true, silent = true, noremap = true, },
  },
  opts = {
    sources = {
      cmdline = { 'path', 'buffer', 'cmdline' },
    },
    completion = {
      menu = {
        enabled = true,
        border = "none",
        winblend = 0,
        winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 100,
        update_delay_ms = 50,
        treesitter_highlighting = true,
        window = {
          min_width = 10,
          max_height = 10,
          border = "none",
          winblend = 0,
          scrollbar = false,
          winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
        },
      },
    },

    appearance = { nerd_font_variant = "normal" },

    keymap = {
      preset = "default",
      ["<C-l>"] = { "select_and_accept", "fallback" },

      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next" },
      ["<C-p>"] = { "select_prev" },
      ["<C-n>"] = { "select_next" },
      ["<C-b>"] = { "scroll_documentation_up" },
      ["<C-f>"] = { "scroll_documentation_down" },

      ["<Tab>"] = {
        LazyVim.cmp.map({ "snippet_forward", "ai_accept" }),
        "fallback",
      },
    },
  },
}
