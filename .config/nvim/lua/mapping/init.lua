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

map('n', '<C-p>', ':Telescope find_files<CR>',        default_opts)
map('n', '<leader><leader>', ':Telescope live_grep<CR>',        default_opts)
map('n', '<C-b>', ':Telescope buffers<CR>',        default_opts)

-- }

-- { Vista tag-viewer
map('n', '<leader>o',   ':Vista!!<CR>', default_opts)   -- open/close
-- }

-- { Startify
map('n', '<leader>ss',  ':SSaveAutoName<CR>', default_opts)
map('n', '<leader>sx',  ':SSaveAutoName<CR> :SClose<CR>', default_opts)
map('n', '<leader>sq',  ':bufdo bwipeout<CR>', default_opts)
-- }

-- { Completion and lsp
map('n', 'rn',          '<cmd>lua vim.lsp.buf.rename()<CR>', default_opts)
map('v', '<leader>F',   '<cmd>lua vim.lsp.buf.range_formatting()<CR>', default_opts)
map('n', '<leader>F',   '<cmd>lua vim.lsp.buf.formatting()<CR>', default_opts)
map('n', '<leader>ac',  '<cmd>lua vim.lsp.buf.code_action()<CR>', default_opts)
map('v', '<leader>ac',  '<cmd>lua vim.lsp.buf.range_code_action()<CR>', default_opts)
map('n', 'K',           '<cmd>lua vim.lsp.buf.hover()<CR>', default_opts)
map('n', 'gD',          '<cmd>lua vim.lsp.buf.type_definition()<CR>', default_opts)
map('n', 'gd',          '<cmd>lua vim.lsp.buf.definition()<CR>', default_opts)
map('n', 'gi',          '<cmd>lua vim.lsp.buf.implementation()<CR>', default_opts)
map('n', 'D',           '<cmd>lua vim.diagnostic.open_float()<CR>', default_opts)
map('n', '<leader>wa',  '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', default_opts)
map('n', '<leader>wr',  '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', default_opts)
map('n', '<leader>wl',  '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', default_opts)
map('n', 'gr',          '<cmd>lua vim.lsp.buf.references()<CR>', default_opts)
map('n', '[d',          '<cmd>lua vim.diagnostic.goto_prev()<CR>', default_opts)
map('n', ']d',          '<cmd>lua vim.diagnostic.goto_next()<CR>', default_opts)
map('n', '<leader>q',   '<cmd>lua vim.diagnostic.setloclist()<CR>', default_opts)
-- }

-- { Explorer
map('n', '-',   '<cmd>NvimTreeOpen<CR>', default_opts)
-- }

-- { Top5 mappings

-- Keep it centered
map('n', 'n',          'nzzzv', {noremap = true})
map('n', 'N',          'Nzzzv', {noremap = true})

-- Undo breakpoints
map('i', ',',          ',<c-g>u', {noremap = true})
map('i', '.',          '.<c-g>u', {noremap = true})
map('i', '!',          '!<c-g>u', {noremap = true})
map('i', '?',          '?<c-g>u', {noremap = true})
map('i', '[',          '[<c-g>u', {noremap = true})
map('i', '(',          '(<c-g>u', {noremap = true})
map('i', '{',          '{<c-g>u', {noremap = true})
map('i', '=',          '=<c-g>u', {noremap = true})

-- Moving text
map("v", "<C-j>", [[:m '>+1<CR>gv=gv]], {noremap=true})
map("v", "<C-k>", [[:m '<-2<CR>gv=gv]], {noremap=true})
map("i", "<C-k>", '<esc>:m .-2<CR>==a', {noremap=true, silent=true})
map("i", "<C-j>", '<esc>:m .+1<CR>==a', {noremap=true, silent=true})
map("n", "<leader>j", [[:m .+1<CR>==]], {noremap=true})
map("n", "<leader>k", [[:m .-2<CR>==]], {noremap=true})
-- }
