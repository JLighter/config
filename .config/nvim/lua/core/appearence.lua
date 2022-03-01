local map = vim.api.nvim_set_keymap

function LightMode() 
    vim.o.background = 'light'
    vim.cmd("colorscheme papercolor")
    vim.notify("Light mode enabled !")
end

function DarkMode() 
    vim.o.background = 'dark'
    vim.cmd("colorscheme aura")
    vim.notify("Dark mode enabled !")
end

DarkMode()

map('n', '<leader>da', ':lua DarkMode()<CR>', { noremap = false, silent = true })
map('n', '<leader>li', ':lua LightMode()<CR>', { noremap = false, silent = true })
