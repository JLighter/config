return {
  "folke/which-key.nvim",
  keys = { "<leader>", "<c-r>", '"', "'", "`", "c", "v", "g" },
  init = function()
    require("core.utils").load_mappings("whichkey")
  end,
  config = function(_, opts)
    dofile(vim.g.base46_cache .. "whichkey")
    local wk = require("which-key")
    wk.setup(opts)

    -- local options = require("custom.configs.whichkey")
    -- wk.register(options.groups)
  end,
}
