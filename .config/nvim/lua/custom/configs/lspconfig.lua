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
    settings = {
      ["rust-analyzer"] = {
        assist = {
          importGranularity = "module",
          importPrefix = "by_self",
        },
        cargo = {
          loadOutDirsFromCheck = true,
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
          enable = true,
          url = "https://www.schemastore.org/json",
        },
				schemas = {
					kubernetes = "*.{yml,yaml}",
					["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
					["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
					["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
					["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
					["http://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
					["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
					["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
					["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
					["http://json.schemastore.org/stylelintrc"] = ".stylelintrc.{yml,yaml}",
					["http://json.schemastore.org/circleciconfig"] = ".circleci/**/*.{yml,yaml}",
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

    print(server_name)
		if servers[server_name].cmd then
			config.cmd = servers[server_name].cmd
		end

		if servers[server_name].root_dir then
			config.root_dir = servers[server_name].root_dir
		end

		require("lspconfig")[server_name].setup(config)
	end,
})
