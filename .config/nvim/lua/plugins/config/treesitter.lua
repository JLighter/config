require('nvim-treesitter.install').compilers = { "gcc" }

local present, ts_config = pcall(require, "nvim-treesitter.configs")
if not present then
   return
end

ts_config.setup {
    ensure_installed = "all",
    highlight = {
        enable = true,
        matchup = {
            enable = true,              -- mandatory, false will disable the whole extension
        },
    },
    indent = {
        enable = true
    },
    context_commentstring = {
        enable = true,
        -- This plugin provided an autocommand option
        enable_autocmd = true,
    }
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.cmd("au BufRead * normal zR")
