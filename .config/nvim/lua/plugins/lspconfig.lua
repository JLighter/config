--
-- add pyright to lspconfig
return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- Use dropdown theme for lsp_references
      keys[#keys + 1] = { "gr", "<cmd>Telescope lsp_references theme=ivy<cr>", desc = "Show references" }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
      },
      diagnostics = {
        virtual_text = false,
        float = {
          border = "single",
        },
      },
    },
  },
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      jdtls = {
        handlers = {
          ["language/status"] = function(_, result)
            -- Print or whatever.
          end,
          ["$/progress"] = function(_, result, ctx)
            -- disable progress updates.
          end,
        },
      },
    },
  }
}
