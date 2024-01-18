local opt = vim.opt

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.shell = "/bin/bash"

vim.wo.relativenumber = true

require('custom.autocommands')
