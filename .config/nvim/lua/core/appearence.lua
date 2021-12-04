local map = vim.api.nvim_set_keymap

function LightMode() 
    vim.o.background = 'light'
    vim.cmd("colorscheme papercolor")
    vim.notify("Light mode enabled !")
end

function DarkMode() 
    vim.o.background = 'dark'
    vim.g.onedark_termcolors=16
    vim.cmd("colorscheme onedark")
    vim.notify("Dark mode enabled !")
end

DarkMode()

map('n', '<leader>da', ':lua DarkMode()<CR>', { noremap = true, silent = true })
map('n', '<leader>li', ':lua LightMode()<CR>', { noremap = true, silent = true })
