return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    opts = {
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = {
          wave = {},
          lotus = {},
          dragon = {},
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(colors) -- add/modify highlights
      local theme = colors.theme
      return {
        ["@comment"] = { fg = theme.diag.error },
        TelescopeTitle = { fg = theme.ui.special, bold = true },
        TelescopePromptNormal = { bg = theme.ui.bg_p1 },
        TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
        TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
        TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
        TelescopePreviewNormal = { bg = theme.ui.bg_dim },
        TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

        Normal = { bg = theme.ui.bg, fg = theme.ui.fg_dim },
        NormalFloat = { bg = theme.ui.bg_m1, fg = theme.ui.fg_m1 },
        FloatBorder = { bg = theme.ui.bg_m1, fg = theme.ui.bg_m1 },
        FloatTitle = { fg = theme.ui.bg, bold = true },

        Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1, blend = vim.o.pumblend }, -- add `blend = vim.o.pumblend` to enable transparency
        PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
        PmenuSbar = { bg = theme.ui.bg_m1 },
        PmenuThumb = { bg = theme.ui.bg_p2 },

        -- Save an hlgroup with dark background and dimmed foreground
        -- so that you can use it where your still want darker windows.
        -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m2 },

        WinSeparator = { fg = theme.ui.bg_p1, bold = true },
        WinBar = { fg = theme.ui.bg_p1, bold = true },
        WinBarNC = { fg = theme.ui.bg_p1, bold = true },

        -- Popular plugins that open floats will link to NormalFloat by default;
        -- set their background accordingly if you wish to keep them dark and borderless
        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

        BufferLineFill = { fg = theme.ui.fg, bg = theme.ui.bg_m3 },
      --     -- BufferLineOffsetSeparator = { fg = ..., bg = ..., },
      --     -- BufferLineTruncMarker = { fg = ..., bg = ..., }
      --
      --     -- BufferLineBackground = { fg = theme.ui.bg_p2, bg = theme.ui.bg_m3 },
      --     -- BufferLineBufferSelected = { fg = theme.ui.fg, bg = theme.ui.bg_m1, bold = true, italic = true, },
      --     -- BufferLineBufferVisible = { fg = theme.ui.bg_p1, bg = theme.ui.bg_m3, },
      --     --
      --     -- BufferLineCloseButton = { fg = theme.ui.bg_p2, bg = theme.ui.bg_m3 },
      --     -- BufferLineCloseButtonSelected = { fg = theme.ui.fg, bg = theme.ui.bg_m1, bold = true, italic = true, },
      --     -- BufferLineCloseButtonVisible = { fg = theme.ui.fg, bg = theme.ui.bg_m2, },
      --     --
      --     -- BufferLineSeparator = { fg = theme.ui.fg, bg = theme.ui.bg_m3 },
      --     -- BufferLineSeparatorSelected = { fg = theme.ui.fg, bg = theme.ui.bg_m1, bold = true, italic = true, },
      --     -- BufferLineSeparatorVisible = { fg = theme.ui.fg, bg = theme.ui.bg_m2, },
      --     --
      --     -- BufferLineIndicatorSelected = { fg = theme.ui.fg, bg = theme.ui.bg_m1, bold = true, italic = true, },
      --     -- BufferLineIndicatorVisible = { fg = theme.ui.fg, bg = theme.ui.bg_m2, },
      --
        BufferLineTab = { fg = theme.ui.bg_p2, bg = theme.ui.bg_m3 },
      --     -- BufferLineTabClose = { fg = ..., bg = ..., },
        BufferLineTabSelected = { fg = theme.ui.fg, bg = theme.ui.bg_m1, bold = true, italic = true },
        BufferLineTabSeparator = { fg = theme.ui.bg_m3, bg = theme.ui.bg_m3 },
        BufferLineTabSeparatorSelected = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
      --
      --     -- BufferLineDiagnostic = { fg = ..., bg = ..., },
      --     -- BufferLineDiagnosticSelected = { fg = ..., bg = ..., bold = true, italic = true, },
      --     -- BufferLineDiagnosticVisible = { fg = ..., bg = ..., },
      --
      --     -- BufferLineDuplicate = { fg = ..., bg = ..., italic = true, },
      --     -- BufferLineDuplicateSelected = { fg = ..., bg = ..., italic = true, },
      --     -- BufferLineDuplicateVisible = { fg = ..., bg = ..., italic = true, },
      --
      --     -- BufferLineError = { fg = ..., bg = ..., sp = ..., },
      --     -- BufferLineErrorDiagnostic = { fg = ..., bg = ..., sp = ..., },
      --     -- BufferLineErrorDiagnosticSelected = { fg = ..., bg = ..., sp = ..., bold = true, italic = true, },
      --     -- BufferLineErrorDiagnosticVisible = { fg = ..., bg = ..., },
      --     -- BufferLineErrorSelected = { fg = ..., bg = ..., sp = ..., bold = true, italic = true, },
      --     -- BufferLineErrorVisible = { fg = ..., bg = ..., },
      --
      --     -- BufferLineHint = { fg = ..., sp = ..., bg = ..., },
      --     -- BufferLineHintDiagnostic = { fg = ..., sp = ..., bg = ..., },
      --     -- BufferLineHintDiagnosticSelected = { fg = ..., bg = ..., sp = ..., bold = true, italic = true, },
      --     -- BufferLineHintDiagnosticVisible = { fg = ..., bg = ..., },
      --     -- BufferLineHintSelected = { fg = ..., bg = ..., sp = ..., bold = true, italic = true, },
      --     -- BufferLineHintVisible = { fg = ..., bg = ..., },
      --
      --     -- BufferLineInfo = { fg = ..., sp = ..., bg = ..., },
      --     -- BufferLineInfoDiagnostic = { fg = ..., sp = ..., bg = ..., },
      --     -- BufferLineInfoDiagnosticSelected = { fg = ..., bg = ..., sp = ..., bold = true, italic = true, },
      --     -- BufferLineInfoDiagnosticVisible = { fg = ..., bg = ..., },
      --     -- BufferLineInfoSelected = { fg = ..., bg = ..., sp = ..., bold = true, italic = true, },
      --     -- BufferLineInfoVisible = { fg = ..., bg = ..., },
      --
      --     -- BufferLineModified = { fg = ..., bg = ..., },
      --     -- BufferLineModifiedSelected = { fg = ..., bg = ..., },
      --     -- BufferLineModifiedVisible = { fg = ..., bg = ..., },
      --
      --     -- BufferLineNumbers = { fg = ..., bg = ..., },
      --     -- BufferLineNumbersSelected = { fg = ..., bg = ..., bold = true, italic = true, },
      --     -- BufferLineNumbersVisible = { fg = ..., bg = ..., },
      --
      --     -- BufferLinePick = { fg = ..., bg = ..., bold = true, italic = true, },
      --     -- BufferLinePickSelected = { fg = ..., bg = ..., bold = true, italic = true, },
      --     -- BufferLinePickVisible = { fg = ..., bg = ..., bold = true, italic = true, },
      --
      --     -- BufferLineWarning = { fg = ..., sp = ..., bg = ..., },
      --     -- BufferLineWarningDiagnostic = { fg = ..., sp = ..., bg = ..., },
      --     -- BufferLineWarningDiagnosticSelected = { fg = ..., bg = ..., sp = ..., bold = true, italic = true, },
      --     -- BufferLineWarningDiagnosticVisible = { fg = ..., bg = ..., },
      --     -- BufferLineWarningSelected = { fg = ..., bg = ..., sp = ..., bold = true, italic = true, },
      --     -- BufferLineWarningVisible = { fg = ..., bg = ..., },
      --
      --     -- NeoTreeBufferNumber = { bg = ..., fg = ...}
      --     -- NeoTreeCursorLine = { bg = ..., fg = ...}
      --     -- NeoTreeDimText = { bg = ..., fg = ...}
      --     -- NeoTreeDirectoryIcon = { bg = ..., fg = ...}
      --     -- NeoTreeDirectoryName = { bg = ..., fg = ...}
      --     -- NeoTreeDotfile = { bg = ..., fg = ...}
      --     -- NeoTreeFadeText1 = { bg = ..., fg = ...}
      --     -- NeoTreeFadeText2 = { bg = ..., fg = ...}
      --     -- NeoTreeFileIcon = { bg = ..., fg = ...}
      --     -- NeoTreeFileName = { bg = ..., fg = ...}
      --     -- NeoTreeFileNameOpened = { bg = ..., fg = ...}
      --     -- NeoTreeFileStats = { bg = ..., fg = ...}
      --     -- NeoTreeFileStatsHeader = { bg = ..., fg = ...}
      --     -- NeoTreeFilterTerm = { bg = ..., fg = ...}
      --     NeoTreeFloatBorder = { bg = theme.ui.bg_m2, fg = theme.ui.bg_m1 },
      --     NeoTreeFloatNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_m1 },
      --     NeoTreeFloatTitle = { bg = theme.ui.bg_m3, fg = theme.ui.special, bold = true },
      --     -- NeoTreeGitAdded = { bg = ..., fg = ...}
      --     -- NeoTreeGitConflict = { bg = ..., fg = ...}
      --     -- NeoTreeGitDeleted = { bg = ..., fg = ...}
      --     -- NeoTreeGitIgnored = { bg = ..., fg = ...}
      --     -- NeoTreeGitModified = { bg = ..., fg = ...}
      --     -- NeoTreeGitRenamed = { bg = ..., fg = ...}
      --     -- NeoTreeGitStaged = { bg = ..., fg = ...}
      --     -- NeoTreeGitUntracked = { bg = ..., fg = ...}
      --     -- NeoTreeGitUnstaged = { bg = ..., fg = ...}
      --     -- NeoTreeHiddenByName = { bg = ..., fg = ...}
      --     -- NeoTreeIndentMarker = { bg = ..., fg = ...}
      --     -- NeoTreeMessage = { bg = ..., fg = ...}
      --     -- NeoTreeModified = { bg = ..., fg = ...}
      --     NeoTreeNormal = { bg = theme.ui.bg_m1, fg = theme.ui.fg_m1 },
      --     -- NeoTreeNormalNC = { bg = ..., fg = ...}
      --     -- NeoTreeSignColumn = { bg = ..., fg = ...}
      --     -- NeoTreeStatusLine = { bg = ..., fg = ...}
      --     -- NeoTreeStatusLineNC = { bg = ..., fg = ...}
      --     -- NeoTreeTabActive = { bg = ..., fg = ...}
      --     -- NeoTreeTabInactive = { bg = ..., fg = ...}
      --     -- NeoTreeTabSeparatorActive = { bg = ..., fg = ...}
      --     -- NeoTreeTabSeparatorInactive = { bg = ..., fg = ...}
      --     -- NeoTreeVertSplit = { bg = ..., fg = ...}
      --     -- NeoTreeWinSeparator = { bg = ..., fg = ...}
      --     -- NeoTreeEndOfBuffer = { bg = ..., fg = ...}
      --     -- NeoTreeRootName = { bg = ..., fg = ...}
      --     -- NeoTreeSymbolicLinkTarget = { bg = ..., fg = ...}
      --     -- NeoTreeTitleBar = { bg = ..., fg = ...}
      --     -- NeoTreeIndentMarker = { bg = ..., fg = ...}
      --     -- NeoTreeExpander = { bg = ..., fg = ...}
      --     -- NeoTreeWindowsHidden = { bg = ..., fg = ...}
      --     -- NeoTreePreview = { bg = ..., fg = ...}
      }
      end,
      theme = "wave",
      background = {
        dark = "wave",
        light = "lotus",
      },
    },
  },

  -- Configure LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
