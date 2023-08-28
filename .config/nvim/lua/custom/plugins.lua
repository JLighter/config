local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      { "williamboman/mason.nvim", config = true },
      "williamboman/mason-lspconfig.nvim",
      'folke/neodev.nvim',
    },
    config = function ()
      require "custom.configs.lspconfig"
    end
  },

  {
    "mhartington/formatter.nvim",
    cmd = { "Format", "FormatWrite", "FormatLock", "FormatLockWrite" },
    config = function ()
      require "custom.configs.formatter"
    end
  },

  -- overrided plugin configs
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = require "custom.configs.nvimtree",
  },

  {
    "hrsh7th/nvim-cmp",
    opts = require "custom.configs.cmp"
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = function() 
      local defaults = require("plugins.configs.telescope")
      local custom = require("custom.configs.telescope")
      return vim.tbl_deep_extend("force", defaults, custom)
    end
  },


  -- Install a plugin
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = require "custom.configs.copilot",
  },

  {
    "tpope/vim-surround",
    event = "BufEnter",
  },

  {
    'alexghergh/nvim-tmux-navigation',
    cmd = { "NvimTmuxNavigateUp", "NvimTmuxNavigateDown", "NvimTmuxNavigateLeft", "NvimTmuxNavigateRight" },
    init = function()
      require("core.utils").load_mappings "tmux"
    end,
    opts = require "custom.configs.tmux",
    config = function(_, opts)
      require('nvim-tmux-navigation').setup(opts)
    end
  },

  {
    'TimUntersberger/neogit',
    cmd = { "Neogit" },
    dependencies = {
      {'nvim-lua/plenary.nvim'},
      {'sindrets/diffview.nvim'}
    },
    config = function()
      require 'neogit'
      require 'custom.configs.neogit'
    end,
  },

  {
    'sindrets/diffview.nvim',
    cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffViewLog" },
  },
  {
    "nvim-neotest/neotest",
    cmd = { "Neotest" },
    dependencies = {
      {"nvim-lua/plenary.nvim"},
      {"nvim-treesitter/nvim-treesitter"},
      {"antoinemadec/FixCursorHold.nvim"},
      {"folke/neodev.nvim"},
      -- Adapters
      {"nvim-neotest/neotest-python"},
      {"nvim-neotest/neotest-plenary"},
      {"nvim-neotest/neotest-go"},
      {"nvim-neotest/neotest-vim-test"}
    },
    init = require("core.utils").load_mappings "neotest",
    opts = function() return require "custom.configs.neotest" end,
    config = function(_, opts)
      require('neotest').setup(opts)
    end,
  },
  {
    "m4xshen/hardtime.nvim",
    event = "BufEnter",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = require('custom.configs.hardtime'),
    config = function(_, opts)
      require('hardtime').setup(opts)
    end,
  },
  { "mbbill/undotree", event = "BufEnter" },
  { "tpope/vim-sensible", event = "BufEnter" },
  {
    'echasnovski/mini.nvim',
    event = "BufEnter",
    version = false,
    config = function()
      require('mini.align').setup()
    end,
  },
  {
    "folke/which-key.nvim",
    keys = { "<leader>", "<c-r>", '"', "'", "`", "c", "v", "g" },
    init = function()
      require("core.utils").load_mappings "whichkey"
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "whichkey")
      local wk = require("which-key")
      wk.setup(opts)

      -- local options = require("custom.configs.whichkey")
      -- wk.register(options.groups)
    end,
  }
}

return plugins
