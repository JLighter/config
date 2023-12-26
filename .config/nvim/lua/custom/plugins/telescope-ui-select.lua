return {
	"nvim-telescope/telescope-ui-select.nvim",
	event = "VimEnter",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("telescope").load_extension("ui-select")
	end,
}
