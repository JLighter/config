return {
	"mhartington/formatter.nvim",
	cmd = { "Format", "FormatWrite", "FormatLock", "FormatLockWrite" },
	config = function()
		require("formatter").setup({
      logging = true,
      -- Set the log level
      log_level = vim.log.levels.WARN,

      filetype = {
        json = {
          require("formatter.filetypes.json").fixjson,
        },
        typescript = {
          require("formatter.filetypes.typescript").prettierd,
        },
        lua = {
          require("formatter.filetypes.lua").stylua,
        },
        python = {
          {
            exe = "black",
            args = { "-" },
            stdin = true,
          },
        },
      },
    })
	end,
}
