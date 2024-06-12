return {
  -- override nvim-cmp and add cmp-emoji
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts) end,
  },

  -- then: setup supertab in cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "onsails/lspkind.nvim",
      "hrsh7th/cmp-cmdline",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")

      opts.window = {
        completion = cmp.config.window.bordered({
          border = "solid",
          winhighlight = "NormalFloat:NormalFloat",
        }),
        documentation = vim.tbl_deep_extend(
          "force",
          cmp.config.window.bordered({
            border = "solid",
            winhighlight = "NormalFloat:NormalFloat",
          }),
          {
            max_height = 10,
            max_width = 70,
          }
        ),
      }

      opts.formatting = {
        format = function(_, item)
          local icons = require("lazyvim.config").icons.kinds
          if icons[item.kind] then
            item.kind = icons[item.kind] .. item.kind
          end

          local get_ws = function(max, len)
            return (" "):rep(max - len)
          end

          local ellipse_content = function(content, max_width, ellipsis_char)
            ellipsis_char = ellipsis_char or "..."

            if content == nil then
              return content
            elseif #content > max_width then
              return vim.fn.strcharpart(content, 0, max_width) .. ellipsis_char
            else
              return content .. get_ws(max_width, #content)
            end
          end

          item.menu = ellipse_content(item.menu, 25)
          item.abbr = ellipse_content(item.abbr, 25)

          return item
        end,
      }

      local compare = require("cmp").config.compare

      opts.sorting = {
        priority_weight = 1.0,
        comparators = {
          compare.locality,
          compare.recently_used,
          compare.score,
          compare.offset,
          compare.order,
        },
      }

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-j>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
            -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
            -- this way you will only jump inside the snippet region
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<C-k>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },
}
