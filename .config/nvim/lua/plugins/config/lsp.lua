local function lspSymbol(name, icon)
   local hl = "DiagnosticSign" .. name
   vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
end

lspSymbol("Error", "")
lspSymbol("Info", "")
lspSymbol("Hint", "")
lspSymbol("Warn", "")

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
 border = "single",
 focusable = false,
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
 border = "single",
 focusable = false,
 relative = "cursor",
})

-- suppress error messages from lang servers
vim.notify = function(msg, log_level)
   if msg:match "exit code" then
      return
   end
   if log_level == vim.log.levels.ERROR then
      vim.api.nvim_err_writeln(msg)
   else
      vim.api.nvim_echo({ { msg } }, true, {})
   end
end

-- Fix background color linked to Pmenu bug
vim.cmd("hi link NormalFloat Normal")

-- Set border style
local border = {
      {"┌", "FloatBorder"},
      {"─", "FloatBorder"},
      {"┐", "FloatBorder"},
      {"│", "FloatBorder"},
      {"┘", "FloatBorder"},
      {"─", "FloatBorder"},
      {"└", "FloatBorder"},
      {"│", "FloatBorder"},
}

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

