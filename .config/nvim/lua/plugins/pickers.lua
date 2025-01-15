return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      win = {
        -- input window
        input = {
          keys = {
            ["<c-l>"] = { "confirm", mode = { "i", "n" } },
          },
        },
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "<leader>/", false },
    { "<leader>gs", false },
    { "<c-p>", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    { "<leader><space>", LazyVim.pick("live_grep"), desc = "Grep (Root dir)" },
  },
}
