local function load_highlights()
	vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "@debug", numhl = "@debug" })
	vim.fn.sign_define("DapBreakpointCondition", { text = "ﳁ", texthl = "@debug", numhl = "@debug" })
	vim.fn.sign_define("DapBreakpointRejected", { text = "", texthl = "@debug", numhl = "@debug" })
	vim.fn.sign_define("DapLogPoint", { text = "", texthl = "@label", numhl = "@label" })
	vim.fn.sign_define("DapStopped", { text = "", texthl = "@tag", numhl = "@tag" })
end

local function get_args()
	local args_str = vim.fn.input(" ", "", "file")
	return vim.split(args_str, " ")
end

return {
	{
		"mfussenegger/nvim-dap",

		dependencies = {
			"rcarriga/cmp-dap",
		},

		config = function()
			local dap = require("dap")
			local utils = require("dap.utils")

			dap.configurations = {}
      dap.adapters = {}

			dap.adapters.codelldb = function(callback, config)
        if config.preLaunchTask then
          vim.fn.system(config.preLaunchTask)
        end
        local command = vim.fn.stdpath("data") .. "/mason/packages/codelldb/codelldb"
        return callback({
					type = "server",
					port = "${port}",
					executable = {
						command = command,
						args = { "--port", "${port}" },
					},
        })
      end

			dap.configurations.rust = {
				{
					name = "Launch",
					type = "codelldb",
					request = "launch",
					program = function()
						local cwd = vim.fn.getcwd()
						local executable_name = string.lower(vim.fn.fnamemodify(cwd, ":t"))
						return cwd .. "/target/debug/" .. executable_name
					end,
					args = get_args,
          preLaunchTask = "cargo build",
				},
				{
					name = "Attach",
					type = "codelldb",
					request = "attach",
					pid = function()
						return utils.pick_process({
							filter = function(proc)
								local executable_name = string.lower(vim.fn.fnamemodify(vim.fn.getcwd(), ":t"))
								return vim.endswith(proc.name, executable_name)
							end,
						})
					end,
				},
			}

			dap.adapters.go = {
				type = "server",
				port = "${port}",
				executable = {
					command = vim.fn.stdpath("data") .. "/mason/packages/delve/dlv",
					args = { "dap", "-l", "127.0.0.1:${port}" },
				},
			}

			dap.configurations.go = {
				{
					type = "go",
					name = "Debug",
					request = "launch",
					program = "${file}",
					args = get_args,
				},
				{
					type = "go",
					name = "Debug test", -- configuration for debugging test files
					request = "launch",
					mode = "test",
					program = "${file}",
				},
				{
					type = "go",
					name = "Debug test (go.mod)",
					request = "launch",
					mode = "test",
					program = "./${relativeFileDirname}",
				},
			}

			load_highlights()
		end,
	},
}
