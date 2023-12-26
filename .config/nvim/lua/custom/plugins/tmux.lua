return {
  "alexghergh/nvim-tmux-navigation",
  cmd = { "NvimTmuxNavigateUp", "NvimTmuxNavigateDown", "NvimTmuxNavigateLeft", "NvimTmuxNavigateRight" },
  init = function()
    require("core.utils").load_mappings("tmux")
  end,
  opts = {
    disabled_when_zoomed = true
  },
  config = function(_, opts)
    require("nvim-tmux-navigation").setup(opts)
  end,
}

