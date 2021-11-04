call plug#begin('~/.vim/bundle')

" Utils
Plug 'vim-scripts/nextval'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/vimproc.vim'
Plug 'powerman/vim-plugin-autosess'
Plug 'KabbAmine/vCoolor.vim'
Plug 'wincent/terminus'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'

" Appearance
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'drewtempelmeyer/palenight.vim'
Plug 'folke/lsp-colors.nvim'

" Status line
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'

" Searching
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" All language
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'janko/vim-test'
Plug 'liuchengxu/vista.vim'
Plug 'luochen1990/rainbow'
Plug 'puremourning/vimspector'
Plug 'tpope/vim-dotenv'
Plug 'github/copilot.vim'

" Autocompletion
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Navigation
Plug 'christoomey/vim-tmux-navigator'

" File manager
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'antoinemadec/FixCursorHold.nvim'

" Git
Plug 'tpope/vim-fugitive'
" We do not use netrw so it is impossible to use these plugins
" Plug 'tpope/vim-rhubarb'
" Plug 'shumphrey/fugitive-gitlab.vim'
" Plug 'cedarbaum/fugitive-azure-devops.vim'
" Plug 'tommcdo/vim-fubitive'

Plug 'idanarye/vim-merginal'
Plug 'airblade/vim-gitgutter'

" Javascript
" Plug 'eliba2/vim-node-inspect'

" Python
Plug 'gotcha/vimpdb'

" HTML
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'
call plug#end()

