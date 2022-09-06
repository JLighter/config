local map = vim.api.nvim_set_keymap

function LightMode() 
    vim.o.background = 'light'
    vim.g.gruvbox_contrast_dark = 'medium'
    vim.cmd("colorscheme papercolor")
end

function DarkMode() 
    vim.o.background = 'dark'
    vim.g.gruvbox_contrast_dark = 'medium'
    vim.cmd("colorscheme gruvbox")
end

DarkMode()
