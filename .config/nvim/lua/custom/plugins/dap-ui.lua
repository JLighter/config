
return {
	"rcarriga/nvim-dap-ui",
  cmd = { "Neotest" },
  dependencies = {
    "mfussenegger/nvim-dap"
  },
	opts = {
		controls = {
			element = "repl",
			enabled = true,
			icons = {
				disconnect = "",
				pause = "",
				play = "",
				run_last = "",
				step_back = "",
				step_into = "",
				step_out = "",
				step_over = "",
				terminate = "",
			},
		},
		element_mappings = {},
		expand_lines = true,
		floating = {
			border = "single",
			mappings = {
				close = { "q", "<Esc>" },
			},
		},
		-- force_buffers = true,
		icons = {
			collapsed = "",
			current_frame = "",
			expanded = "",
		},
		layouts = {
			{
				elements = {
					{
						id = "scopes",
						size = 0.75,
					},
					{
						id = "breakpoints",
						size = 0.25,
					},
				},
				position = "left",
				size = 35,
			},
			{
				elements = {
					{
						id = "stacks",
						size = 1,
					},
				},
				position = "right",
				size = 35,
			},
      {
        elements = {
          {
            id = "console",
            size = 1,
          },
        },
        position = "bottom",
        size = 8,
      }
		},
		mappings = {
			edit = "e",
			expand = "o",
			open = "gd",
			remove = "d",
			repl = "r",
			toggle = "t",
		},
		render = {
			indent = 1,
			max_value_lines = 100,
		},
	},
	config = function(_, opts)
		require("dapui").setup(opts)
	end,
}
