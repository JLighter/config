---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<C-n>"] = "",

    ["<leader>/"] = "",
    ["<leader>e"] = "",

    -- git
    ["<leader>cm"] = "",
    ["<leader>gt"] = "",
    ["<leader>ff"] = "",
    ["<leader>fw"] = "",
  }
}

M.general = {
  n = {
    ["<leader>/"] = { ":vsplit <CR>", "Split buffer vertically", opts = { nowait = true } },
    ["<leader>-"] = { ":split <CR>", "Split buffer horizontally", opts = { nowait = true } },
  },
}

M.neogit = {
  n = {
    ["<leader>gs"] = { ":Neogit <CR>", "Open neogit status", opts = { nowait = true } },
    ["<leader>gl"] = { ":Neogit log <CR>", "Open neogit log", opts = { nowait = true } },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["-"] = { ":NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

M.tmux = {
  n = {
    ["<C-j>"] = { ":NvimTmuxNavigateDown <CR>", "Move to down tmux pane", opts = { nowait = true, noremap = true, silent = true } },
    ["<C-k>"] = { ":NvimTmuxNavigateUp <CR>", "Move to up tmux pane", opts = { nowait = true, noremap = true, silent = true } },
    ["<C-l>"] = { ":NvimTmuxNavigateRight <CR>", "Move to right tmux pane", opts = { nowait = true, noremap = true, silent = true } },
    ["<C-h>"] = { ":NvimTmuxNavigateLeft <CR>", "Move to left tmux pane", opts = { nowait = true, noremap = true, silent = true } },
  }
}

M.neotest = {
  n = {
    ["<leader>tF"] = { ":w|lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Debug File" },
    ["<leader>tL"] = { ":w|lua require('neotest').run.run_last({strategy = 'dap'})<CR>", "Debug Last" },
    ["<leader>ta"] = { ":w|lua require('neotest').run.attach()<CR>", "Attach" },
    ["<leader>tf"] = { ":w|lua require('neotest').run.run(vim.fn.expand('%'))<CR>", "File" },
    ["<leader>tl"] = { ":w|lua require('neotest').run.run_last()<CR>", "Last" },
    ["<leader>tn"] = { ":w|lua require('neotest').run.run()<CR>", "Nearest" },
    ["<leader>tN"] = { ":w|lua require('neotest').run.run({strategy = 'dap, opts = })<CR>", "Debug Nearest" },
    ["<leader>to"] = { ":w|lua require('neotest').output.open({ enter = true })<CR>", "Output" },
    ["<leader>ts"] = { ":w|lua require('neotest').run.stop()<CR>", "Stop" },
    ["<leader>tS"] = { ":w|lua require('neotest').summary.toggle()<CR>", "Summary" },
  }
}

M.telescope = {
  plugin = true,

  n = {
    -- find
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<leader><leader>"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
  },
}
-- more keybinds!

return M
