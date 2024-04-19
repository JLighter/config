return {
  "alexghergh/nvim-tmux-navigation",
  cmd = { "NvimTmuxNavigateUp", "NvimTmuxNavigateDown", "NvimTmuxNavigateLeft", "NvimTmuxNavigateRight" },
  opts = {
    disabled_when_zoomed = true,
  },
  config = function(_, opts)
    require("nvim-tmux-navigation").setup(opts)
  end,
}
