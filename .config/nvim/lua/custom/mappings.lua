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
    ["<leader>fm"] = "",
    ["<leader>fw"] = "",
    ["<leader>gb"] = "",
  }
}

M.general = {
  n = {
    ["<leader>/"] = { ":vsplit <CR>", "Split buffer vertically", opts = { nowait = true, silent = true } },
    ["<leader>-"] = { ":split <CR>", "Split buffer horizontally", opts = { nowait = true, silent = true} },
  },
}

M.neogit = {
  n = {
    ["<leader>gs"] = { ":Neogit <CR>", "Status", opts = { nowait = true, silent = true } },
    ["<leader>gb"] = { function() package.loaded.gitsigns.blame_line() end, "Blame", opts = { nowait = true } },
    ["<leader>ghr"] = { function() package.loaded.gitsigns.reset_hunk() end, "Reset", opts = { nowait = true } },
    ["<leader>ghp"] = { function() package.loaded.gitsigns.preview_hunk() end, "Preview", opts = { nowait = true } },
    ["<leader>ghs"] = { function() package.loaded.gitsigns.stage_hunk() end, "Stage", opts = { nowait = true } },
    ["<leader>ghu"] = { function() package.loaded.gitsigns.undo_stage_hunk() end, "Undo stage", opts = { nowait = true } },
    ["<leader>ghU"] = { function() package.loaded.gitsigns.reset_buffer() end, "Reset buffer", opts = { nowait = true } },
    ["<leader>ghv"] = { function() package.loaded.gitsigns.select_hunk() end, "Select hunk", opts = { nowait = true } },
    ["<leader>ghn"] = { function() package.loaded.gitsigns.next_hunk() end, "Go to next hunk", opts = { nowait = true } },
    ["<leader>ghN"] = { function() package.loaded.gitsigns.previous_hunk() end, "Go to previous hunk", opts = { nowait = true } },
    ["<leader>gd"] = { ":DiffviewOpen <CR>", "Diff", opts = { nowait = true, silent = true } },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["-"] = { ":NvimTreeToggle <CR>", "Toggle nvimtree", opts = { silent = true } },
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
    ["<leader>tdf"] = { ":w|lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "File" },
    ["<leader>tdl"] = { ":w|lua require('neotest').run.run_last({strategy = 'dap'})<CR>",                "Last" },
    ["<leader>tdn"] = { ":w|lua require('neotest').run.run({strategy = 'dap, opts = })<CR>",             "Nearest" },
    ["<leader>ta"] = { ":w|lua require('neotest').run.attach()<CR>",                                     "Attach" },
    ["<leader>tf"] = { ":w|lua require('neotest').run.run(vim.fn.expand('%'))<CR>",                      "File" },
    ["<leader>tl"] = { ":w|lua require('neotest').run.run_last()<CR>",                                   "Last" },
    ["<leader>tn"] = { ":w|lua require('neotest').run.run()<CR>",                                        "Nearest" },
    ["<leader>to"] = { ":w|lua require('neotest').output.open({ enter = true })<CR>",                    "Output" },
    ["<leader>ts"] = { ":w|lua require('neotest').run.stop()<CR>",                                       "Stop" },
    ["<leader>tS"] = { ":w|lua require('neotest').summary.toggle()<CR>",                                 "Summary" },
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

M.formatter = {
  n = {
    ["<leader>fm"] = { ":Format<CR>", "Format", opts = { silent = true } },
  }
}

return M
