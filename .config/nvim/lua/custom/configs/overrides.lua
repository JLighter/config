local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"lua",
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"c",
		"markdown",
		"markdown_inline",
		"terraform",
		"hcl",
		"go",
		"dockerfile",
		"yaml",
	},
	indent = {
		enable = true,
		-- disable = {
		--   "python"
		-- },
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}

return M
