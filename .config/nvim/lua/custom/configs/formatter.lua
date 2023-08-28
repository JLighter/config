-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
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
	},
})
