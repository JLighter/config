local actions = require "telescope.actions"

local options = {
  defaults = {
    prompt_prefix = " 󰍉 ",
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
	extensions = {
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
