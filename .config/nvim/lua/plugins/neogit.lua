return {
  "TimUntersberger/neogit",
  branch = "master",
  cmd = { "Neogit" },
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "sindrets/diffview.nvim" },
    { "nvim-telescope/telescope.nvim" },
  },
  opts = {
    graph_style = "unicode",
    git_services = {
      ["github.com"] = "https://github.com/${owner}/${repository}/compare/${branch_name}?expand=1",
      ["bitbucket.org"] = "https://bitbucket.org/${owner}/${repository}/pull-requests/new?source=${branch_name}&t=1",
      ["gitlab.com"] = "https://gitlab.com/${owner}/${repository}/merge_requests/new?merge_request[source_branch]=${branch_name}",
      ["gitlab.web-atrio.com"] = "https://gitlab.web-atrio.com/${owner}/${repository}/merge_requests/new?merge_request[source_branch]=${branch_name}",
    },
    telescope_sorter = function()
      return require("telescope").extensions.fzf.native_fzf_sorter()
    end,
    -- Automatically show console if a command takes more than console_timeout milliseconds
    auto_show_console = false,
    signs = {
      -- { CLOSED, OPENED }
      section = { "", "" },
      item = { "", "" },
      hunk = { "", "" },
    },
    integrations = {
      telescope = true,
      diffview = true,
    },
  },
  config = function(_, opts)
    local neogit = require("neogit")

    neogit.setup(opts)
  end,
}
