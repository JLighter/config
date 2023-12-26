local overrides = require("custom.configs.overrides")

local plugins = {}

-- Include every objects that are in plugins/ files
local file_glob = vim.g.base46_cache .. "plugins/*.lua"
local files_in_plugins_folder = vim.fn.glob(file_glob, 0, true)

for _, file in ipairs(files_in_plugins_folder) do
  local require_path = "plugins." .. vim.fn.fnamemodify(file, ":t:r")
  local config = require(require_path)
  if config then
    table.insert(overrides, config)
  end
end

return plugins
