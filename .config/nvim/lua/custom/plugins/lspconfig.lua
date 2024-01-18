return {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- format & linting
    { "williamboman/mason.nvim", config = true },
    "williamboman/mason-lspconfig.nvim",
    "folke/neodev.nvim",
    "nvim-lua/lsp-status.nvim"
  },
  config = function()
    local on_attach = require("plugins.configs.lspconfig").on_attach
    local capabilities = require("plugins.configs.lspconfig").capabilities
    local util = require("lspconfig.util")

    local lspconfig = require("mason-lspconfig")

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
      helm_ls = {
        cmd = { "helm_ls", "serve" },
        filetypes = { "helm" },
        root_dir = function(fname)
          return util.root_pattern("Chart.yaml")(fname)
        end,
      },

      rust_analyzer = {
        cmd = {"rust-analyzer"};
        root_dir = util.root_pattern("Cargo.toml", "rust_project.json"),
        filetypes = { "rust" },
        docs = {
          package_json = "https://github.com/rust-analyzer/rust-analyzer/raw/master/editors/code/package.json";
          description = [[
      https://github.com/rust-analyzer/rust-analyzer

      rust-analyzer (aka rls 2.0), a language server for Rust

      See [docs](https://github.com/rust-analyzer/rust-analyzer/tree/master/docs/user#settings) for extra settings.
          ]];
          default_config = {
            root_dir = [[root_pattern("Cargo.toml", "rust-project.json")]];
          };
        };
        settings = {
          ["rust-analyzer"] = {
            check = {
              command = "clippy",
            },
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
          },
        },
      },

      yamlls = {
        settings = {
          yaml = {
            schemaStore = {
              enable = true,
              url = "https://www.schemastore.org/json",
            },
            schemas = {
              kubernetes = "*.{yml,yaml}",
              ["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = "*gitlab-ci*.{yml,yaml}",
              ["https://json.schemastore.org/chart.json"] = "Chart.{yml,yaml}",
              ["https://json.schemastore.org/kustomization.json"] = "kustomization.{yml,yaml}",
              ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
              ["https://json.schemastore.org/github-workflow.json"] = ".github/workflows/*.{yml,yaml}",
              ["https://json.schemastore.org/github-action.json"] = ".github/action.{yml,yaml}",
              ["https://raw.githubusercontent.com/ansible/ansible-lint/main/src/ansiblelint/schemas/ansible.json#/$defs/tasks"] = "roles/tasks/*.{yml,yaml}",
              ["https://json.schemastore.org/prettierrc.json"] = ".prettierrc.{yml,yaml}",
              ["https://json.schemastore.org/stylelintrc.json"] = ".stylelintrc.{yml,yaml}",
              ["https://json.schemastore.org/circleciconfig.json"] = ".circleci/**/*.{yml,yaml}",
            },
          },
        },
      },

      -- go
      gopls = {},

      -- c/cpp stuff
      clangd = {},

      -- python
      pyright = {},
      pylsp = {},

    }

    lspconfig.setup({
      ensure_installed = vim.tbl_keys(servers),
    })

    lspconfig.setup_handlers({
      function(server_name)
        local config = {
          capabilities = capabilities,
          on_attach = on_attach,
          settings = (servers[server_name] or {}).settings,
          filetypes = (servers[server_name] or {}).filetypes,
        }

        if servers[server_name].cmd then
          config.cmd = servers[server_name].cmd
        end

        if servers[server_name].root_dir then
          config.root_dir = servers[server_name].root_dir
        end

        require("lspconfig")[server_name].setup(config)
      end,
    })
  end,
}

