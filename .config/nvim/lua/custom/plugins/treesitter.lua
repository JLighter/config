return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "LiadOz/nvim-dap-repl-highlights", config = function() require("nvim-dap-repl-highlights").setup() end },
    },
    opts = {
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
        "yaml",
        "glimmer",
        "dap_repl"
      },
      indent = {
        enable = false,
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
  }
}
