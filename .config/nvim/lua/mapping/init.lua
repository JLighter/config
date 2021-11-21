vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = false, silent = true}

-- { Buffers
map('n', '<leader>bn', ':BufferLineMoveNext<CR>',  default_opts)
map('n', '<leader>bp', ':BufferLineMovePrev<CR>',  default_opts)
map('n', '<leader>bx', ':Bdelete this<CR>',        default_opts)
-- }

-- { Explorer
map('n', '-', ':NvimTreeToggle<CR>', default_opts)
-- }

-- { Vista tag-viewer
map('n', '<leader>o', ':Vista!!<CR>', default_opts)   -- open/close
-- }

-- { Startify
map('n', '<leader>ss', ':SSaveAutoName<CR>', default_opts)
map('n', '<leader>sx', ':SSaveAutoName<CR> :SClose<CR>', default_opts)
map('n', '<leader>sq', ':bufdo bwipeout<CR>', default_opts)
-- }
