local ToggleCopilot = function ()
  local client = require('copilot.client')
  local commands = require('copilot.command')

  if client.is_disabled() then
    commands.enable()
    vim.print(' Enabling copilot')
  else
    commands.disable()
    vim.print(' Disabling copilot')
  end
end

return {
  "zbirenbaum/copilot.lua",
  event = "BufEnter",
  keys = {
    { "<leader>cO", ToggleCopilot, desc = "Toggle copilot" },
  },
  config = function (_, opts)
    local copilot = require('copilot')
    copilot.setup(opts)
    require('copilot.command').disable()
  end
}
