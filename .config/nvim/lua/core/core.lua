local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

g.encoding = "UTF-8"
g.compatible = false

opt.mouse = 'a'
opt.mouse = 'nicr'
opt.clipboard = 'unnamedplus'

opt.history = 100
opt.cmdheight = 1
opt.synmaxcol = 240
opt.tabstop = 2
opt.pumheight = 10
opt.timeoutlen = 500

opt.autoindent = true
opt.smartindent = true

opt.number = true
opt.showmatch = true
opt.expandtab = true
opt.ignorecase = true
opt.smartcase = true
opt.swapfile = false
opt.backup = false
opt.wrap = false
opt.termguicolors = true

g.transparent_background = false
g.italic_comments = true
g.italic_keywords = true
g.itaic_functions = true
g.italic_variables = true
g.rnvimr_enable_picker = 1
g.matchup_matchparen_stopline = 400
g.matchup_delim_stopline = 1500
g.loaded_matchit = 1

g.signcolumn = yes
g.shiftwidth = 2
g.mouse = n
g.backspace = indent,eol,start
-- TextEdit might fail if hidden is not set.
g.hidden = true
g.autoread = true
g.ttyfast = true
g.laststatus = 0

-- show existing tab with 2 spaces width
-- when indenting with '>', use 2 spaces width
-- On pressing tab, insert 2 spaces
g.expandtab = true

-- Keep cursor on middle of the screen
g.scrolloff = 3
g.sidescrolloff = 5
g.cursorline = false
g.lazyredraw = true

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.cmd('set updatetime=400')

g.wildmenu = true
g.wildmode = "list:longest"

g.showmode = true
g.showcmd = true

-- Swap file
vim.cmd('set directory=~/.vim/swp/')

-- No backup
g.nobackup = true
g.nowritebackup = true

-- Undo file
vim.cmd('set undofile')
vim.cmd('set undodir=~/.vim/undodir')

g.spelllang = "en,fr"

g.matchup_matchparen_offscreen = {method='popup'}
g.loaded_matchit = 1
