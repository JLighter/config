local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

-- Auto resize panes when resizing nvim window
autocmd("VimResized", { pattern = "*", command = "tabdo wincmd =" })

-- Set nowrap
autocmd("BufEnter", { pattern = "*", command = "set nowrap" })

-- Highlight non-breaking whitespace
autocmd("VimEnter,BufWinEnter", { pattern = "*", command= "syn match ErrorMsg ' '" })

opt.relativenumber = true
