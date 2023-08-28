local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local mason_lspconfig = require "mason-lspconfig"

local servers = {
  -- lua stuff
  lua_ls = {},

  -- web dev stuff
  cssls = {},
  html = {},
  angularls = {},
  tsserver = {},
  emmet_ls = {},

  -- devops
  terraformls = {},
  ansiblels = {},
  dockerls = {},
  docker_compose_language_service = {},

  -- go
  gopls = {},

  -- c/cpp stuff
  clangd = {},
}

mason_lspconfig.setup({
  ensure_installed = vim.tbl_keys(servers)
})

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
      filetypes = (servers[server_name] or {}).filetypes,
    }
  end
}

