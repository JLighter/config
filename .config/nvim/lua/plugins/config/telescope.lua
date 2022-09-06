require('telescope').setup {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    prompt_prefix = "  ",
    selection_caret = "  ",
    entry_prefix = "  ",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    border = {},
    borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    file_ignore_patterns = { "node_modules", ".git" },
    path_display = { "truncate" },
    color_devicons = true,
    winblend = 0,
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    file_previewer = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    mappings = {
      i = {
        ["<ESC>"] = require('telescope.actions').close,
        ["<C-k>"] = require('telescope.actions').move_selection_better,
        ["<C-j>"] = require('telescope.actions').move_selection_worse,
      },
    }
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = true,
      override_file_sorter = true,
    },
    repo = {
      list = {
        search_dirs = {
          "~/Documents/Working",
          "~/Documents/Personal",
        },
      },
    },
  },
  pickers = {
    live_grep = {
      theme = "ivy",
    },
    find_files = {
      theme = "ivy",
    }
  },
}
