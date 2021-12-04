vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = false, silent = true}

-- { Buffers
-- map('n', 'gb', ':BufferLineCycleNext<CR>',  default_opts)
-- map('n', 'gB', ':BufferLineCyclePrev<CR>',  default_opts)
-- map('n', 'mb', ':BufferLinePick<CR>',  default_opts)
map('n', '<leader>bx', ':bdelete %<CR>',        default_opts)
-- map('n', '<leader>bxl', ':BufferLineCloseRight<CR>',        default_opts)
-- map('n', '<leader>bxh', ':BufferLineCloseLeft<CR>',        default_opts)
map('n', '<leader>bl', ':JABSOpen<CR>',            default_opts)

-- map('n', '<leader>b1', ':BufferLineGoToBuffer 1<CR>',        default_opts)
-- map('n', '<leader>b2', ':BufferLineGoToBuffer 2<CR>',        default_opts)
-- map('n', '<leader>b3', ':BufferLineGoToBuffer 3<CR>',        default_opts)
-- map('n', '<leader>b4', ':BufferLineGoToBuffer 4<CR>',        default_opts)
-- map('n', '<leader>b5', ':BufferLineGoToBuffer 5<CR>',        default_opts)
-- map('n', '<leader>b6', ':BufferLineGoToBuffer 6<CR>',        default_opts)
-- map('n', '<leader>b7', ':BufferLineGoToBuffer 7<CR>',        default_opts)
-- map('n', '<leader>b8', ':BufferLineGoToBuffer 8<CR>',        default_opts)
-- map('n', '<leader>b9', ':BufferLineGoToBuffer 9<CR>',        default_opts)
-- map('n', '<leader>b0', ':BufferLineGoToBuffer 10<CR>',        default_opts)
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
map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>', default_opts)
map('n', '<leader>ac', ':lua vim.lsp.buf.code_action()<CR>', default_opts)
map('v', '<leader>ac', ':lua vim.lsp.buf.range_code_action()<CR>', default_opts)
map('v', '<leader>F', ':lua vim.lsp.buf.range_formatting()<CR>', default_opts)
map('n', '<leader>F', ':lua vim.lsp.buf.formatting()<CR>', default_opts)
map('n', '<leader>k', ':lua vim.lsp.buf.hover()<CR>', default_opts)
map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', default_opts)
map('n', 'D', ':lua vim.lsp.diagnostic.show_position_diagnostics()<CR>', default_opts)
-- }
