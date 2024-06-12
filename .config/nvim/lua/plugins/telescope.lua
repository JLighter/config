return {
  {
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    dependencies = {
      "nvim-telescope/telescope-ui-select.nvim",
      "nvim-telescope/telescope-project.nvim",
    },

    keys = function()
      return {
        { "<C-p>", "<cmd> Telescope git_files theme=ivy <CR>", desc = "Find files (git)", { silent = true } },
        { "<leader><leader>", "<cmd> Telescope live_grep theme=ivy <CR>", desc = "Live grep", { silent = true } },
        { "<leader>fp", "<cmd> Telescope project theme=dropdown <CR>", desc = "Find projects", { silent = true } },
        { "<leader>fm", "<cmd> Telescope marks theme=dropdown <CR>", desc = "Find marks", { silent = true } },
        { "<leader>ff", "<cmd> Telescope git_files theme=ivy <CR>", desc = "Find files (git)", { silent = true } },
        { "<leader>fb", "<cmd> Telescope buffers theme=dropdown <CR>", desc = "Find buffers", { silent = true } },
        { "<leader>fF", "<cmd> Telescope find_files theme=ivy <CR>", desc = "Find files (all)", { silent = true } },
      }
    end,
    opts = function(_, defaults)
      local actions = require("telescope.actions")

      local custom = {
        defaults = {
          vimgrep_arguments = {
            "rg",
            "-L",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
          },
          prompt_prefix = " 󰍉 ",
          layout_strategy = "horizontal",
          theme = "ivy",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
            },
            vertical = {
              mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
          },
          file_sorter = require("telescope.sorters").get_fuzzy_file,
          file_ignore_patterns = { "node_modules" },
          generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
          initial_mode = "insert",
          selection_strategy = "reset",
          sorting_strategy = "ascending",
          mappings = {
            n = {
              ["q"] = actions.close,
              ["<C-j>"] = actions.move_selection_worse,
              ["<C-k>"] = actions.move_selection_better,
            },
            i = {
              ["<ESC>"] = actions.close,
              ["<C-j>"] = actions.move_selection_worse,
              ["<C-k>"] = actions.move_selection_better,
            },
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({
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
            order_by = "recent",
            search_by = "title",
            sync_with_nvim_tree = true, -- default false
            on_project_selected = function(prompt_bufnr)
              local project_actions = require("telescope._extensions.project.actions")
              project_actions.change_working_directory(prompt_bufnr, false)
              require("neo-tree.command").execute({
                action = "show",
                position = "current",
                source = "filesystem",
              })
              require("neo-tree.command").execute({
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
    config = function(_, opts)
      local telescope = require('telescope')
      telescope.setup(opts)
      telescope.load_extension("ui-select")
      telescope.load_extension("project")
    end,
  },
}
