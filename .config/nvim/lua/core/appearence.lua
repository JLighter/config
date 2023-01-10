local map = vim.api.nvim_set_keymap

require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = false, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})

function LightMode() 
    vim.g.material_style = "lighter"
    vim.cmd("colorscheme material")
end

function DarkMode() 
    vim.o.background = 'dark'
    vim.g.gruvbox_contrast_dark = 'medium'
    vim.cmd("colorscheme gruvbox")
end

DarkMode()
