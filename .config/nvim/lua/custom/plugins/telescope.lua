return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	opts = function()
		local defaults = require("plugins.configs.telescope")
    local actions = require("telescope.actions")
		local custom = {
			defaults = {
				prompt_prefix = " 󰍉 ",
				layout_strategy = "horizontal",
				mappings = {
					n = {
						["q"] = actions.close,
						["<C-j>"] = actions.move_selection_worse,
						["<C-k>"] = actions.move_selection_better,
					},
					i = {
						["ESC"] = actions.close,
						["<C-j>"] = actions.move_selection_worse,
						["<C-k>"] = actions.move_selection_better,
					},
				},
			},
			pickers = {
				find_files = {
					theme = "ivy",
				},
				oldfiles = {
					theme = "ivy",
				},
				buffers = {
					theme = "ivy",
				},
				live_grep = {
					theme = "ivy",
				},
				marks = {
					theme = "ivy",
				},
				project = {
					theme = "ivy",
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_ivy({
						prompt_prefix = " ",
						prompt_title = "",
						results_title = "",
						layout_strategy = "bottom_pane",
						layout_config = {
							prompt_position = "bottom",
							height = 8,
						},
					}),
				},
				project = {
					hidden_files = false, -- default: false
					theme = "ivy",
					order_by = "recent",
					search_by = "title",
					sync_with_nvim_tree = false, -- default false
					on_project_selected = function(prompt_bufnr)
						local project_actions = require("telescope._extensions.project.actions")
						project_actions.change_working_directory(prompt_bufnr, false)
						require("neo-tree.command").execute({
							action = "show",
							position = "current",
							source = "filesystem",
						})
            require('neo-tree.command').execute({
              action = "cd",
              position = "current",
              source = "filesystem",
            })
					end,
				},
			},
		}
		return vim.tbl_deep_extend("force", defaults, custom)
	end,
}
