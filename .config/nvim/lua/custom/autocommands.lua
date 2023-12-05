local autocmd = vim.api.nvim_create_autocmd

autocmd("BufReadPost,FileReadPost", { pattern = "*", command = "normal zR" })

-- Auto resize panes when resizing nvim window
autocmd("VimResized", { pattern = "*", command = "tabdo wincmd =" })

-- Set nowrap
autocmd("BufEnter", { pattern = "*", command = "set nowrap" })

-- Highlight non-breaking whitespace
autocmd("VimEnter,BufWinEnter,BufEnter", { pattern = "*", command= "syn match ErrorMsg ' '" })

-- Show only modified buffers
autocmd({ "BufAdd", "BufEnter", "tabnew" }, {
  callback = function()
    vim.t.bufs = vim.tbl_filter(function(bufnr)
      return vim.api.nvim_buf_get_option(bufnr, "modified")
    end, vim.t.bufs)
  end,
})

