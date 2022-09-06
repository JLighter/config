local g = vim.g
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

local list = {
  { key = "l",    cb = tree_cb("edit_in_place") },
  { key = "t",    cb = tree_cb("tabnew") },
  { key = "<CR>", cb = tree_cb("cd") },
  { key = "P",    cb = tree_cb("parent_node") },
  { key = "h",    cb = tree_cb("close_node") },
  { key = "I",    cb = tree_cb("toggle_ignored") },
  { key = "H",    cb = tree_cb("toggle_dotfiles") },
  { key = "R",    cb = tree_cb("refresh") },
  { key = "a",    cb = tree_cb("create") },
  { key = "d",    cb = tree_cb("remove") },
  { key = "r",    cb = tree_cb("rename") },
  { key = "x",    cb = tree_cb("cut") },
  { key = "c",    cb = tree_cb("copy") },
  { key = "p",    cb = tree_cb("paste") },
  { key = "y",    cb = tree_cb("copy_name") },
  { key = "Y",    cb = tree_cb("copy_path") },
  { key = "gy",   cb = tree_cb("copy_absolute_path") },
  { key = "[c",   cb = tree_cb("prev_git_item") },
  { key = "]c",   cb = tree_cb("next_git_item") },
  { key = "-",    cb = tree_cb("dir_up") },
  { key = "X",    cb = tree_cb("system_open") },
  { key = "q",    cb = tree_cb("close") },
  { key = "?",    cb = tree_cb("toggle_help") },
}

g.nvim_tree_refresh_wait = 1000 -- 1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.

require'nvim-tree'.setup {
    view = {
      mappings = {
          custom_only = true,
          list = list
      },
    },
    hijack_cursor = true,
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = true,
    actions = {
      change_dir = {
        enable = true,
        global = false,
        restrict_above_cwd = true
      },
      open_file = {
        window_picker = {
          enable = false,
        },
      },
    },
    renderer = {
      special_files = {
        ['README.md'] = 1,
        ['Makefile'] = 1,
        ['MAKEFILE'] = 1
      }, -- List of filenames that gets highlighted with NvimTreeSpecialFile
      indent_markers = {
        enable = false
      },
      add_trailing = true,
      icons = {
        webdev_colors = true,
        git_placement = 'after',
        show = {
          git = true,
          folder_arrow = true,
          folder = true,
          file = true
        },
        glyphs = {
          default = "",
          symlink = "",
          git = {
            unstaged = "",
            staged = "S",
            unmerged = "",
            renamed = "➜",
            deleted = "",
            untracked = "U",
            ignored = "◌"
          },
          folder = {
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = ""
          }
        }
      },
    },
    system_open = {
      cmd = "open"
    },
    filesystem_watchers = {
      enable = true,
    },
    diagnostics = {
      enable = false,
      show_on_dirs = false,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      },
    },
    filters = {
      dotfiles = false,
      custom = {},
      exclude = {},
    },
    git = {
      enable = true,
      ignore = false,
      timeout = 400,
    },
    trash = {
      cmd = "trash",
      require_confirm = true,
    },
}
