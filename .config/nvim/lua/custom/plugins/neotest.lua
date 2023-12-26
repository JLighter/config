return {
		"nvim-neotest/neotest",
		cmd = { "Neotest" },
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-treesitter/nvim-treesitter" },
			{ "antoinemadec/FixCursorHold.nvim" },
			{ "folke/neodev.nvim" },
			-- Adapters
			{ "nvim-neotest/neotest-python" },
			{ "nvim-neotest/neotest-plenary" },
			{ "nvim-neotest/neotest-go" },
			{ "nvim-neotest/neotest-vim-test" },
		},
		init = require("core.utils").load_mappings("neotest"),
		opts = function()
      return {
        adapters = {
          -- require("neotest-plenary"),
          require("neotest-vim-test")({ allow_file_types = {} }),
          require("neotest-python")({
            dap = { justMyCode = false },
          }),
          require("neotest-go")
        },
        status = { virtual_text = true },
        output = { open_on_run = true },
      }
		end,
		config = function(_, opts)
			require("neotest").setup(opts)

      local neotest_ns = vim.api.nvim_create_namespace("neotest")
      vim.diagnostic.config({
        virtual_text = {
          format = function(diagnostic)
            local message =
              diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
            return message
          end,
        },
      }, neotest_ns)
		end,
	}
