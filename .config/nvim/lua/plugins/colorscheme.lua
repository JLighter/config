return {
  { "notken12/base46-colors", 
    config = function() 
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function ()
          vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'StatusLineSeparator' })
          vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' })
          vim.api.nvim_set_hl(0, 'TelescopeNormal', { link = 'Normal' })
          vim.api.nvim_set_hl(0, 'TelescopeBorder', { link = 'StatusLineSeparator' })
          vim.api.nvim_set_hl(0, 'WinSeparator', { link = "StatusLineSeparator" })
          vim.api.nvim_set_hl(0, 'MiniIndentScopeSymbol', { link = "StatusLineSeparator"  })
          vim.api.nvim_set_hl(0, 'MiniIndentScopeSymbolOff', { link = "BufferLineIndicatorVisible" })
        end
      })
    end
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
