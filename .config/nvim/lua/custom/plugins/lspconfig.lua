return {
	"neovim/nvim-lspconfig",
	dependencies = {
		-- format & linting
		{ "williamboman/mason.nvim", config = true },
		"williamboman/mason-lspconfig.nvim",
		"folke/neodev.nvim",
		"nvim-lua/lsp-status.nvim",
    { "b0o/schemastore.nvim" }
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
				cmd = { "rust-analyzer" },
				root_dir = util.root_pattern("Cargo.toml", "rust_project.json"),
				filetypes = { "rust" },
				docs = {
					package_json = "https://github.com/rust-analyzer/rust-analyzer/raw/master/editors/code/package.json",
					description = [[
      https://github.com/rust-analyzer/rust-analyzer

      rust-analyzer (aka rls 2.0), a language server for Rust

      See [docs](https://github.com/rust-analyzer/rust-analyzer/tree/master/docs/user#settings) for extra settings.
          ]],
					default_config = {
						root_dir = [[root_pattern("Cargo.toml", "rust-project.json")]],
					},
				},
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
							enable = true,
						},
					},
				},
			},

			yamlls = {
				settings = {
					yaml = {
						schemaStore = {
							enable = false,
							url = "",
						},
            format = { enable = true, singleQuote = false },
            validate = { enable = true },
						schemas = require('schemastore').yaml.schemas(),
					},
				},
			},
      jsonls = {
        settings = {
          json = {
            schemas = require('schemastore').json.schemas(),
            validate = { enable = true },
          },
        },
      },

			-- go
			gopls = {
				gofumpt = true,
				codelenses = {
					gc_details = false,
					generate = true,
					regenerate_cgo = true,
					run_govulncheck = true,
					test = true,
					tidy = true,
					upgrade_dependency = true,
					vendor = true,
				},
				hints = {
					assignVariableTypes = true,
					compositeLiteralFields = true,
					compositeLiteralTypes = true,
					constantValues = true,
					functionTypeParameters = true,
					parameterNames = true,
					rangeVariableTypes = true,
				},
				analyses = {
					fieldalignment = true,
					nilness = true,
					unusedparams = true,
					unusedwrite = true,
					useany = true,
				},
				usePlaceholders = true,
				completeUnimported = true,
				staticcheck = true,
				directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
				semanticTokens = true,
			},

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
