local actions = require("telescope.actions")

local options = {
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
			require("telescope.themes").get_ivy {
        prompt_prefix = " ",
        prompt_title = "",
        results_title = "",
        layout_strategy = "bottom_pane",
				layout_config = {
          prompt_position = "bottom",
					height = 5,
				},
			},
		},
		project = {
			hidden_files = false, -- default: false
			theme = "ivy",
			order_by = "recent",
			search_by = "title",
			sync_with_nvim_tree = true, -- default false
			on_project_selected = function(prompt_bufnr)
				local project_actions = require("telescope._extensions.project.actions")
				project_actions.change_working_directory(prompt_bufnr, false)
				require("nvim-tree.api").tree.toggle()
			end,
		},
	},
}

return options
