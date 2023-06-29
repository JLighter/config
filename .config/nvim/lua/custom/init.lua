local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt

-- Auto resize panes when resizing nvim window
autocmd("VimResized", { pattern = "*", command = "tabdo wincmd =" })

-- Set nowrap
autocmd("BufEnter", { pattern = "*", command = "set nowrap" })

opt.relativenumber = true
