local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "terraform",
    "hcl",
    "go",
    "dockerfile",
    "yaml"
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "angular-language-server",
    "typescript-language-server",
    "deno",
    "prettier",
    "emmet-ls",

    -- devops
    "terraform-ls",
    "ansible-language-server",
    "dockerfile-language-server",
    "dockerfile-language-server",
    "docker-compose-language-server",
    "helmls",

    -- go
    "gopls",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

M.nvimtree = {
  open_on_setup = true,
  ignore_ft_on_setup = { "dashboard" },
  auto_close = true,
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  lsp_diagnostics = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  system_open = {
    cmd = nil,
    args = {},
  },
}

return M
