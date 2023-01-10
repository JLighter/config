local lsp_installer = require("nvim-lsp-installer")

local capabilities                                                          = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.documentationFormat     = { 'markdown', 'plaintext' }
capabilities.textDocument.completion.completionItem.snippetSupport          = false
capabilities.textDocument.completion.completionItem.preselectSupport        = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport    = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport     = true
capabilities.textDocument.completion.completionItem.deprecatedSupport       = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport              = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport          = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  },
}

capabilities.textDocument.codeAction = {
  dynamicRegistration = true,
  codeActionLiteralSupport = {
    codeActionKind = {
      valueSet = (function()
        local res = vim.tbl_values(vim.lsp.protocol.CodeActionKind)
        table.sort(res)
        return res
      end)()
    }
  }
}

capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end

lsp_installer.on_server_ready(function(server)
  local opts = {
    capabilities = capabilities,
    on_attach = on_attach
  }

  if server.name == "sass" then
    opts.settings = {
      html = {
        format = {
          templating = true,
          wrapLineLength = 120,
        },
        hover = {
          documentation = true,
          references = true,
        },
      },
    }
  end
  if server.name == "css" then
    opts.settings = {
      css = {
        validate = true
      },
      less = {
        validate = true
      },
      scss = {
        validate = true
      }
    }
  end
  if server.name == "html" then
    opts.settings = {
      html = {
        format = {
          templating = true,
          wrapLineLength = 120,
          wrapAttributes = 'auto',
        },
        hover = {
          documentation = true,
          references = true,
        },
      },
    }
  end
  if server.name == "yamlls" then
    opts.capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
    opts.settings = {
      redhat = { telemetry = { enabled = false } },
      yaml = {
        format = { enable = true },
        completion = true,
        hover = true,
        schemaStore = {
          url = "https://www.schemastore.org/api/json/catalog.json",
          enable = true,
        },
      },
    }
    opts.on_attach = function(client, bufnr)
      on_attach(client, bufnr)
      if vim.bo[bufnr].buftype ~= "" or vim.bo[bufnr].filetype == "helm" then
        vim.diagnostic.disable()
      end
    end
  end

  if server.name == "sumneko_lua" then
    opts.settings = {
      Lua = {
        diagnostics = {
          globals = { 'vim' }
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = { [vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true }
        }
      }
    }
  end

  server:setup(opts)
  vim.cmd [[ do User LspAttachBuffers ]]
end)
