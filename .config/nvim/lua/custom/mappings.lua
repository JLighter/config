---@class MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<C-n>"] = "",

    ["<leader>/"] = "",
    ["<leader>e"] = "",
    ["<leader>ma"] = "",
    ["<leader>th"] = "",
    ["<leader>td"] = "",

    -- git
    ["<leader>cm"] = "",
    ["<leader>gt"] = "",
    ["<leader>ff"] = "",
    ["<leader>fm"] = "",
    ["<leader>fw"] = "",
    ["<leader>gb"] = "",

    ["<leader>q"] = "",
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
  v = {
    ['<leader>ghs'] = { ":Git stage_hunk <CR>", "Stage", opts = { nowait = true, silent = true } },
    ['<leader>ghr'] = { ":Git stage_hunk <CR>", "Reset", opts = { nowait = true, silent = true } }
  }
}

M.neotree = {
  n = {
    -- toggle
    ["-"] = { ":Neotree show reveal_file=% position=current<CR>", "Open neotree", opts = { silent = true } },
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
    ["<leader>dtf"] = { ":w|lua require('neotest').run.run({vim.fn.expand('%'), strategy='dap'})<cr>", "File" },
    ["<leader>dtl"] = { ":w|lua require('neotest').run.run_last({strategy='dap'})<CR>", "Last" },
    ["<leader>dtn"] = { ":w|lua require('neotest').run.run({strategy='dap'})<CR>", "Nearest" },
    ["<leader>tf"] = { ":w|lua require('neotest').run.run(vim.fn.expand('%'))<CR>", "File" },
    ["<leader>tl"] = { ":w|lua require('neotest').run.run_last()<CR>", "Last" },
    ["<leader>tn"] = { ":w|lua require('neotest').run.run()<CR>", "Nearest" },

    ["<leader>to"] = { ":w|lua require('neotest').output.open({ enter = true })<CR>", "Output" },
    ["<leader>ts"] = { ":w|lua require('neotest').run.stop()<CR>", "Stop" },
    ["<leader>tu"] = { ":w|lua require('neotest').summary.toggle()<CR>", "Summary" },
  }
}

M.telescope = {
  plugin = true,

  n = {
    -- find
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "Find files", opts = { silent = true } },
    ["<leader><leader>"] = { "<cmd> Telescope live_grep <CR>", "Live grep", opts = { silent = true } },
    ["<leader>fp"] = { "<cmd> Telescope project <CR>", "Find projects", opts = { silent = true }},
    ["<leader>ft"] = { "<cmd> Telescope terms <CR>", "Find terminals", opts = { silent = true }},
    ["<leader>fm"] = { "<cmd> Telescope marks <CR>", "Find marks", opts = { silent = true }},
  },
}
-- more keybinds!

M.formatter = {
  n = {
    ["<leader>F"] = { ":Format<CR>", "Format", opts = { silent = true } },
  }
}

M.undotree = {
  n = {
    ["<leader>u"] = { ":UndotreeToggle<CR>", "Undo tree", opts = { silent = true } },
  }
}

M.dap = {
  n = {
    ["<leader>dk"] = { ":lua require('dap').continue()<CR>", "Continue", opts = { silent = true } },
    ["<leader>dd"]  = { ":lua require('dap').toggle_breakpoint()<CR>", "Toggle breakpoint", opts = { silent = true } },
    ["<leader>dD"]  = { ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", "Set conditional breakpoint", opts = { silent = true } },
    ["<leader>du"]  = { ":lua require('dapui').toggle()<CR>", "Toggle UI", opts = { silent = true } },
    ["<leader>dr"]  = { ":lua require('dap').repl.toggle()<CR>", "Toggle Repl", opts = { silent = true } },
    ["<leader>dl"] = { ":lua require('dap').step_into()<CR>", "Step into", opts = { silent = true } },
    ["<leader>dj"] = { ":lua require('dap').step_over()<CR>", "Step hover", opts = { silent = true } },
    ["<leader>dh"] = { ":lua require('dap').step_out()<CR>", "Step out", opts = { silent = true } },
    ["<leader>dc"] = { ":lua require('dap').run_to_cursor()<CR>", "Continue to cursor", opts = { silent = true } },
    ["<leader>dR"] = { ":lua require('dap').restart()<CR>", "Restart", opts = { silent = true } },
  }
}

M.trouble = {
  n = {
    ["<leader>qx"] = { "<cmd>TroubleToggle<cr>", "Trouble", opts = { silent = true } },
    ["<leader>qw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace diagnostics", opts = { silent = true } },
    ["<leader>qd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document diagnostics", opts = { silent = true } },
    ["<leader>ql"] = { "<cmd>TroubleToggle loclist<cr>", "Loclist", opts = { silent = true } },
    ["<leader>qq"] = { "<cmd>TroubleToggle quickfix<cr>", "Quickfix", opts = { silent = true } },
    ["<leader>gr"] = { "<cmd>TroubleToggle lsp_references<cr>", "References", opts = { silent = true } },
  }
}

return M
