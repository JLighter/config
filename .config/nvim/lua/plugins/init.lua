local present, packer = pcall(require, "plugins.packerInit")
local execute = vim.api.nvim_command
local fn = vim.fn

if not present then
  return false
end

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " ..
    install_path)
  execute "packadd packer.nvim"
end
vim.cmd "autocmd BufWritePost plugins.lua PackerCompile"
vim.opt.termguicolors = true

return require("packer").startup(function(use)
  -- { PACKER
  use { "wbthomason/packer.nvim" }
  -- }

  -- { Home page
  use { 'mhinz/vim-startify' }
  -- }

  -- { LSP
  use { 'github/copilot.vim' }

  use { "williamboman/nvim-lsp-installer" }
  use { 'neovim/nvim-lspconfig' }

  use { "folke/lsp-colors.nvim" }
  use { "onsails/lspkind-nvim" }
  use { "tami5/lspsaga.nvim" }

  -- { CMP
  use { "hrsh7th/nvim-cmp", requires = { "saadparwaiz1/cmp_luasnip", "L3MON4D3/LuaSnip" } }
  use { "hrsh7th/cmp-nvim-lua" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { 'hrsh7th/cmp-cmdline' }
  use { "saadparwaiz1/cmp_luasnip" }
  use { "petertriho/cmp-git" }
  -- }

  -- { Tab
  use { 'alvarosevilla95/luatab.nvim', requires = 'kyazdani42/nvim-web-devicons' }
  -- }

  -- { Appearance
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'nvim-treesitter/nvim-treesitter-context' }
  use { 'nvim-treesitter/playground' }
  use { 'navarasu/onedark.nvim' }
  use { 'rktjmp/lush.nvim' }
  use { 'NLKNguyen/papercolor-theme' }
  use { 'EdenEast/nightfox.nvim' }
  use { 'morhetz/gruvbox' }
  -- }

  -- { Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'shinchu/lightline-gruvbox.vim' }
  --}

  -- { File manager
  use { "kyazdani42/nvim-tree.lua" }
  use { "ygm2/rooter.nvim" }
  -- }

  -- { Icons
  use { "kyazdani42/nvim-web-devicons" }
  use { "ryanoasis/vim-devicons" }
  use { 'lambdalisue/nerdfont.vim' }
  -- }


  -- { Git
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-rhubarb' }
  use { 'idanarye/vim-merginal' }
  use { "lewis6991/gitsigns.nvim" }
  -- }

  -- { Writing
  use { 'tpope/vim-surround' }
  use { 'editorconfig/editorconfig-vim' }

  use { 'tpope/vim-repeat' }
  use { 'tpope/vim-commentary' }
  use { 'junegunn/vim-easy-align' }
  -- }

  -- { Registers
  use { "tversteeg/registers.nvim" }
  -- }

  -- { Search
  use { 'nvim-lua/popup.nvim' }
  use { 'nvim-lua/plenary.nvim' }
  use { 'nvim-telescope/telescope.nvim' }
  -- }

  -- { Navigation
  use { 'christoomey/vim-tmux-navigator' }
  use { 'tpope/vim-vinegar' }
  -- }

  -- { Organizer
  use { 'phaazon/mind.nvim' }
  -- }

  -- { Utils
  use { 'powerman/vim-plugin-autosess' }
  use { 'tpope/vim-unimpaired' }
  use { 'wincent/terminus' }
  use { 'tpope/vim-dotenv' }
  use { 'norcalli/nvim-colorizer.lua' }
  use { 'tpope/vim-abolish' }
  -- }
end)
