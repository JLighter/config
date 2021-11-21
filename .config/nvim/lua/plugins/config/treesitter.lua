require('nvim-treesitter.install').compilers = { "gcc" }

local present, ts_config = pcall(require, "nvim-treesitter.configs")
if not present then
   return
end

ts_config.setup {
  use_languagetree = true,
  ensure_installed ="all",
   highlight = {
      enable = true,
   matchup = {
     enable = true,              -- mandatory, false will disable the whole extension
     disable = { "c", "ruby" },  -- optional, list of language that will be disabled
     },
   },
  context_commentstring = {
    enable = true,
    -- This plugin provided an autocommand option
    enable_autocmd = true,
  }
}

