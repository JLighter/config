vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = false, silent = true}

-- { Buffers
map('n', '<leader>bx', ':bdelete %<CR>',        default_opts)
-- }

-- { Startify
map('n', '<leader>ss',  ':SSaveAutoName<CR>', default_opts)
map('n', '<leader>sx',  ':SSaveAutoName<CR> :SClose<CR>', default_opts)
map('n', '<leader>sq',  ':bufdo bwipeout<CR>', default_opts)
-- }

-- { Completion and lsp
map('n', '<leader>rn',  '<cmd>lua vim.lsp.buf.rename()<CR>', default_opts)
map('v', '<leader>F',   '<cmd>lua vim.lsp.buf.range_formatting()<CR>', default_opts)
map('n', '<leader>F',   '<cmd>lua vim.lsp.buf.formatting()<CR>', default_opts)
map('n', '<leader>ac',  '<cmd>lua vim.lsp.buf.code_action()<CR>', default_opts)
map('v', '<leader>ac',  '<cmd>lua vim.lsp.buf.range_code_action()<CR>', default_opts)
map('n', 'K',           '<cmd>lua vim.lsp.buf.hover()<CR>', default_opts)
map('n', 'D',           '<cmd>lua vim.diagnostic.open_float()<CR>', default_opts)
map('n', 'gD',          '<cmd>lua vim.lsp.buf.type_definition()<CR>', default_opts)
map('n', 'gd',          '<cmd>lua vim.lsp.buf.definition()<CR>', default_opts)
map('n', 'gi',          '<cmd>lua vim.lsp.buf.implementation()<CR>', default_opts)
map('n', 'gr',          '<cmd>lua vim.lsp.buf.references()<CR>', default_opts)
map('n', '<leader>wa',  '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', default_opts)
map('n', '<leader>wr',  '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', default_opts)
map('n', '<leader>wl',  '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', default_opts)
map('n', '[d',          '<cmd>lua vim.diagnostic.goto_prev()<CR>', default_opts)
map('n', ']d',          '<cmd>lua vim.diagnostic.goto_next()<CR>', default_opts)
map('n', '<leader>dq',  '<cmd>lua vim.diagnostic.setqflist()<CR>', default_opts)
map('n', '<leader>dl',  '<cmd>lua vim.diagnostic.setloclist()<CR>', default_opts)
map('n', '<leader>e',   '<cmd>lua vim.diagnostic.open_float()<CR>', default_opts)
-- }
--
-- { Explorer
map('n', '-',   '<cmd>lua require"nvim-tree".open_replacing_current_buffer()<CR>', default_opts)
-- }

-- { Fuzzy finder
map('n', '<leader><leader>',  '<cmd>Telescope live_grep<CR>',  {noremap = false, silent = true});
map('n', '<C-p>',               '<cmd>Telescope find_files<CR>', {noremap = false, silent = true});
-- }

-- {
map('n', '<leader>q',  '<cmd>cw<CR>', default_opts)
map('n', '<leader>l',  '<cmd>cw<CR>', default_opts)
-- }

-- { Top5 mappings

-- Undo breakpoints
-- map('i', ',',          ',<c-g>u', {noremap = true})
-- map('i', '.',          '.<c-g>u', {noremap = true})
-- map('i', '!',          '!<c-g>u', {noremap = true})
-- map('i', '?',          '?<c-g>u', {noremap = true})
-- map('i', '[',          '[<c-g>u', {noremap = true})
-- map('i', '(',          '(<c-g>u', {noremap = true})
-- map('i', '{',          '{<c-g>u', {noremap = true})
-- map('i', '=',          '=<c-g>u', {noremap = true})

-- Moving text
map("v", "<C-j>", [[:m '>+1<CR>gv=gv]], {noremap=true}) -- Conflict with nvim-cmp up and down on completion
map("v", "<C-k>", [[:m '<-2<CR>gv=gv]], {noremap=true})
-- }
