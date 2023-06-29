  local neotest_ns = vim.api.nvim_create_namespace("neotest")
  vim.diagnostic.config({
    virtual_text = {
      format = function(diagnostic)
        local message =
          diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
        return message
      end,
    },
  }, neotest_ns)


local options = {
  adapters = {
    require("neotest-plenary"),
    require("neotest-vim-test")({ allow_file_types = {} }),
    require("neotest-python")({
      dap = { justMyCode = false },
    }),
    require("neotest-go")
  },
  status = { virtual_text = true },
  output = { open_on_run = true },
}

return options
