return {
  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { 
      use_diagnostic_signs = true,
      win_config = { border = { "" } }, -- window configuration for floating windows. See |nvim_open_win()|.
      auto_fold = true,
      cycle_results = false,
    },
  },
}
