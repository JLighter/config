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
}

return options
