local g = vim.g
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

local list = {
  { key = "l",                            cb = tree_cb("edit") },
  { key = "<CR>",                         cb = tree_cb("cd") },
  { key = "/",                            cb = tree_cb("vsplit") },
  { key = "-",                            cb = tree_cb("split") },
  { key = "t",                            cb = tree_cb("tabnew") },
  { key = "<",                            cb = tree_cb("prev_sibling") },
  { key = ">",                            cb = tree_cb("next_sibling") },
  { key = "P",                            cb = tree_cb("parent_node") },
  { key = "h",                            cb = tree_cb("close_node") },
  { key = "<Tab>",                        cb = tree_cb("preview") },
  { key = "K",                            cb = tree_cb("first_sibling") },
  { key = "J",                            cb = tree_cb("last_sibling") },
  { key = "I",                            cb = tree_cb("toggle_ignored") },
  { key = "H",                           cb = tree_cb("toggle_dotfiles") },
  { key = "R",                            cb = tree_cb("refresh") },
  { key = "a",                            cb = tree_cb("create") },
  { key = "d",                            cb = tree_cb("remove") },
  { key = "r",                            cb = tree_cb("rename") },
  { key = "<C-r>",                        cb = tree_cb("full_rename") },
  { key = "x",                            cb = tree_cb("cut") },
  { key = "c",                            cb = tree_cb("copy") },
  { key = "p",                            cb = tree_cb("paste") },
  { key = "y",                            cb = tree_cb("copy_name") },
  { key = "Y",                            cb = tree_cb("copy_path") },
  { key = "gy",                           cb = tree_cb("copy_absolute_path") },
  { key = "[c",                           cb = tree_cb("prev_git_item") },
  { key = "]c",                           cb = tree_cb("next_git_item") },
  { key = "<BS>",                         cb = tree_cb("dir_up") },
  { key = "X",                            cb = tree_cb("system_open") },
  { key = "q",                            cb = tree_cb("close") },
  { key = "g?",                           cb = tree_cb("toggle_help") },
}

g.nvim_tree_show_icons = {
    git = 1,
    folder_arrows = 1,
    folders = 1,
    files = 1
}
g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
        ignore = 1,
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
    },
}

g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_root_folder_modifier = table.concat {":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??"}
g.nvim_tree_quit_on_open = 1 -- 0 by default, closes the tree when you open a file
g.nvim_tree_indent_markers = 0 -- 0 by default, this option shows indent markers when folders are open
g.nvim_tree_git_hl = 1 -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
g.nvim_tree_add_trailing = 0 -- 0 by default, append a traiing slash to folder names
g.nvim_tree_group_empty = 0 -- 0 by default, compact folders that only contain a single folder into one node in the file tree
g.nvim_tree_disable_window_picker = 1 -- 0 by default, will disable the window picker.
g.nvim_tree_icon_padding = ' ' -- one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
g.nvim_tree_symlink_arrow = ' >> ' -- defaults to ' ➛ '. used as a separator between symlinks' source and target.
g.nvim_tree_respect_buf_cwd = 0 -- 0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
g.nvim_tree_create_in_closed_folder = 0 -- 1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
g.nvim_tree_refresh_wait = 1000 -- 1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
g.nvim_tree_window_picker_exclude = {
    filetype = {'notify', 'packer', 'qf'},
    buftype = {'terminal'}
}

g.nvim_tree_special_files = {
    ['README.md'] = 1,
    ['Makefile'] = 1,
    ['MAKEFILE'] = 1
} -- List of filenames that gets highlighted with NvimTreeSpecialFile

require'nvim-tree'.setup {
    disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = true,
    ignore_ft_on_setup  = {},
    auto_close          = false,
    open_on_tab         = true,
    hijack_cursor       = true,
    update_cwd          = true,
    diagnostics = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = ""
        }
    },
    update_focused_file = {
      enable = true,
      update_cwd = false
    },
    view = {
      hide_root_folder = true,
        mappings = {
            custom_only = true,
            list = list
        }
    }
}
