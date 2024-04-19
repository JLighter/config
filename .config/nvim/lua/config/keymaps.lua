-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

-- General
map("n", "<leader>/", ":vsplit <CR>", { desc = "Split buffer vertically", nowait = true, silent = true })
map("n", "<leader>-", ":split <CR>", { desc = "Split buffer horizontally", nowait = true, silent = true })

-- Neogit
map("n", "<leader>gs", ":Neogit <CR>", { desc = "Status", nowait = true, silent = true })
map("n", "<leader>gb", function() package.loaded.gitsigns.blame_line() end, { desc = "Blame", nowait = true })
map("n", "<leader>ghr", function() package.loaded.gitsigns.reset_hunk() end, { desc = "Reset", nowait = true })
map("n", "<leader>ghp", function() package.loaded.gitsigns.preview_hunk() end, { desc = "Preview", nowait = true })
map("n", "<leader>ghs", function() package.loaded.gitsigns.stage_hunk() end, { desc = "Stage", nowait = true })
map("n", "<leader>ghu", function() package.loaded.gitsigns.undo_stage_hunk() end, { desc = "Undo stage", nowait = true })
map("n", "<leader>gU", function() package.loaded.gitsigns.reset_buffer() end, { desc = "Reset buffer", nowait = true })
map("n", "<leader>ghv", function() package.loaded.gitsigns.select_hunk() end, { desc = "Select hunk", nowait = true })
map("n", "<leader>ghn", function() package.loaded.gitsigns.next_hunk() end, { desc = "Go to next hunk", nowait = true })
map("n", "<leader>ghN", function() package.loaded.gitsigns.previous_hunk() end, { desc = "Go to previous hunk", nowait = true })
map("n", "<leader>gd", ":DiffviewOpen <CR>", { desc = "Diff", nowait = true, silent = true })
map("v", "<leader>ghs", ":Git stage_hunk <CR>", { desc = "Stage", nowait = true, silent = true })
map("v", "<leader>ghr", ":Git stage_hunk <CR>", { desc = "Reset", nowait = true, silent = true })

map( "n", "-", ":Neotree show reveal_force_cwd position=current<CR>", { desc = "Open Neotree", nowait = true, silent = true })

-- Tmux
map( "n", "<C-j>", ":NvimTmuxNavigateDown <CR>", { desc = "Move to bottom tmux pane", nowait = true, silent = true, noremap = true })
map( "n", "<C-k>", ":NvimTmuxNavigateUp <CR>", { desc = "Move to top tmux pane", nowait = true, silent = true, noremap = true })
map( "n", "<C-l>", ":NvimTmuxNavigateRight <CR>", { desc = "Move to right tmux pane", nowait = true, silent = true, noremap = true })
map( "n", "<C-h>", ":NvimTmuxNavigateLeft <CR>", { desc = "Move to left tmux pane", nowait = true, silent = true, noremap = true })

-- Lsp
map("n", "D", "<cmd>")

-- Disabled
vim.keymap.del("n", "<leader>cd")
