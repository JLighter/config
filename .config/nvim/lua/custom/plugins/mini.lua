return {
  "echasnovski/mini.nvim",
  event = "BufEnter",
  version = false,
  config = function()
    require("mini.align").setup()
  end,
}

