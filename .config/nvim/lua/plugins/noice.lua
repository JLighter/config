return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      enabled = true, -- enables the Noice cmdline UI
      view = "cmdline", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
      opts = {}, -- global options for the cmdline. See section on views
      ---@type table<string, CmdlineFormat>
      format = {
        -- conceal: (default=true) This will hide the text in the cmdline that matches the pattern.
        -- view: (default is cmdline view)
        -- opts: any options passed to the view
        -- icon_hl_group: optional hl_group for the icon
        -- title: set to anything or empty string to hide
        cmdline = { pattern = "^:", icon = " ", lang = "vim" },
        search_down = { kind = "search", pattern = "^/", icon = "  ", lang = "regex" },
        search_up = { kind = "search", pattern = "^%?", icon = "  ", lang = "regex" },
        filter = { pattern = "^:%s*!", icon = " $", lang = "bash" },
        lua = { pattern = { "^:%s*lua%s+", " ^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = " ", lang = "lua" },
        help = { pattern = "^:%s*he?l?p?%s+", icon = " 󰋗" },
        calculator = { pattern = "^=", icon = " ", lang = "vimnormal" },
        input = {}, -- Used by input()
        -- lua = false, -- to disable a format, set to `false`
      },
    },
    notify = {
      -- Noice can be used as `vim.notify` so you can route any notification like other messages
      -- Notification messages have their level and other properties set.
      -- event is always "notify" and kind can be any log level as a string
      -- The default routes will forward notifications to nvim-notify
      -- Benefit of using Noice for this is the routing and consistent history view
      enabled = true,
      view = "mini",
    },
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
      signature = {
        enabled = true,
        auto_open = {
          enabled = true,
          trigger = true, -- Automatically show signature help when typing a trigger character from the LSP
          luasnip = true, -- Will open signature help when jumping to Luasnip insert nodes
          throttle = 50, -- Debounce lsp signature help request by 50ms
        },
      },
      hover = {
        slient = true,
      },
      documentation = {
        view = "hover",
        ---@type NoiceViewOptions
        opts = {
          scrollbar = true,
          relative = "cursor",
          size = {
            width = "auto",
            height = "auto",
            max_height = 10,
            max_width = 70,
          },
          border = {
            style = "solid",
            padding = { 0, 0 },
          },
        },
      },
    },
    presets = {
      bottom_search = true,
      command_palette = false,
      long_message_to_split = true,
      inc_rename = true,
      lsp_doc_border = true,
    },
    ---@type NoiceConfigViews
    views = {
      mini = {
        backend = "mini",
        relative = "editor",
        align = "message-right",
        timeout = 2000,
        reverse = true,
        focusable = false,
        position = {
          row = -2,
          col = -1,
        },
        size = "auto",
        border = {
          style = "solid",
          padding = { 0, 0 }
        },
        zindex = 60,
        win_options = {
          winbar = "",
          foldenable = true,
          winblend = 30,
          winhighlight = {
            Normal = "NormalFloat",
            IncSearch = "",
            CurSearch = "",
            Search = "",
          },
        },
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "<leader>unl", function() require("noice").cmd("last") end, desc = "Noice Last Message" },
    { "<leader>unh", function() require("noice").cmd("history") end, desc = "Noice History" },
    { "<leader>una", function() require("noice").cmd("all") end, desc = "Noice All" },
    { "<leader>und", function() require("noice").cmd("dismiss") end, desc = "Dismiss All" },
    { "<leader>unt", function() require("noice").cmd("telescope") end, desc = "Noice Telescope" },
    { "<leader>snl" },
    { "<leader>snh" },
    { "<leader>sna" },
    { "<leader>snd" },
    { "<leader>snt" },
  },
}
