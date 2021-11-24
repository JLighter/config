vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = false, silent = true}

-- { Buffers
map('n', '<leader>bn', ':BufferLineMoveNext<CR>',  default_opts)
map('n', '<leader>bp', ':BufferLineMovePrev<CR>',  default_opts)
map('n', '<leader>bx', ':Bdelete this<CR>',        default_opts)
map('n', '<leader>bl', ':JABSOpen<CR>',            default_opts)
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

-- { Language server 
map('n', '<leader>rn', '<cmd>Lspsaga rename<CR>', default_opts)
map('n', '<leader>af', '<cmd>Lspsaga code_action<CR>', default_opts)
map('x', '<leader>af', '<cmd>Lspsaga range_code_action<CR>', default_opts)
map('n', '<leader>k', '<cmd>Lspsaga preview_definition()<CR>', default_opts)
map('n', 'K', '<cmd>Lspsaga hover_doc<CR>', default_opts)
map('n', 'D', '<cmd>Lspsaga show_cursor_diagnostics<CR>', default_opts)
-- }
