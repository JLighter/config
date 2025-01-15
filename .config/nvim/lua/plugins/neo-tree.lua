return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "-", ":Neotree position=current reveal<CR>", desc = "Open explorer", remap = false, mode = "n" },
  },
  opts = {
    close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
    popup_border_style = "solid",
    enable_diagnostics = false,
    open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
    sort_case_insensitive = false, -- used when sorting files and directories in the tree
    window = {
      mappings = {
        ["P"] = { "toggle_preview", config = { use_float = false } },
        ["y"] = { "copy", nowait = true },
        ["c"] = { "copy_to_clipboard", nowait = true },
        ["o"] = { "open", nowait = true },
        ["oc"] = "none",
        ["od"] = "none",
        ["og"] = "none",
        ["om"] = "none",
        ["on"] = "none",
        ["os"] = "none",
        ["ot"] = "none",
      },
    },
    filesystem = {
      hijack_netrw_behavior = "open_current", -- netrw disabled, opening a directory opens neo-tree
      group_empty_dirs = false, -- group empty directories first
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true
      }
    },
    buffers = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = true
      }
    },
    source_selector = {
      winbar = false,
      statusline = false,
      document_symbols = false,
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
  end,
}
