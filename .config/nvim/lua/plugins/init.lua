local present, packer = pcall(require, "plugins.packerInit")
local execute = vim.api.nvim_command
local fn = vim.fn
local use = packer.use

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
    use {"wbthomason/packer.nvim"}
-- }

-- { Home page
   use {'mhinz/vim-startify'}
-- }

-- { LSP
   use {"folke/lsp-colors.nvim"}
   use {"onsails/lspkind-nvim"}
   use {"neovim/nvim-lspconfig"}
   use {"L3MON4D3/LuaSnip"}
   use {"williamboman/nvim-lsp-installer"}
   use {'github/copilot.vim'}
   use {'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu'}
   use {"ray-x/lsp_signature.nvim"}
   use {"tami5/lspsaga.nvim"}
-- }

-- { CMP
   use {"hrsh7th/nvim-cmp"}
   use {"hrsh7th/cmp-nvim-lua"}
   use {"hrsh7th/cmp-nvim-lsp"}
   use {"hrsh7th/cmp-buffer"}
   use {"hrsh7th/cmp-path"}
   use {"saadparwaiz1/cmp_luasnip"}
-- }

-- { Tab
   use { 'alvarosevilla95/luatab.nvim', requires='kyazdani42/nvim-web-devicons' }
-- }

-- { Appearance
   use {'sonph/onehalf', rtp='vim'}
   use {'nvim-treesitter/nvim-treesitter'}
   use {'projekt0n/github-nvim-theme'}
   use {'rcarriga/nvim-notify'}
   use {'rafamadriz/neon'}
-- } 

-- { Status line
   use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
   use {'shinchu/lightline-gruvbox.vim'}
--}

-- { File manager
   use { "kyazdani42/nvim-tree.lua" }
-- }

-- { Icons
   use { "kyazdani42/nvim-web-devicons" }
   use { "ryanoasis/vim-devicons" }
   use {'lambdalisue/nerdfont.vim'}
-- }


-- { Git 
   use {'tpope/vim-fugitive'}
   use {'idanarye/vim-merginal'}
   use { "lewis6991/gitsigns.nvim" }
-- }

-- { Writing
   use {'Raimondi/delimitMate'}
   use {'tpope/vim-surround'}
   use {'editorconfig/editorconfig-vim'}

   use {'vim-scripts/nextval'}
   use {'tpope/vim-repeat'}
   use {'tpope/vim-commentary'}
   use {'junegunn/vim-easy-align'}
   use {'easymotion/vim-easymotion'}
-- }

-- { Registers 
   use "tversteeg/registers.nvim"
-- }

-- { Search
   use {'nvim-lua/popup.nvim'}
   use {'nvim-lua/plenary.nvim'}
   use {'nvim-telescope/telescope.nvim'}
-- }

-- { Navigation
   use {'christoomey/vim-tmux-navigator'}
   use {'matbme/JABS.nvim'}
-- }

-- { Utils
   use {'powerman/vim-plugin-autosess'}
   use {'wincent/terminus'}
   use {'tpope/vim-dotenv'}
   use {'liuchengxu/vista.vim'}
-- }
end)
