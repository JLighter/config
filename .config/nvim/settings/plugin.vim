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

" Appearance
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'mhinz/vim-startify'

" Searching
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim'

" All language
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'janko/vim-test'
Plug 'liuchengxu/vista.vim'
Plug 'luochen1990/rainbow'
Plug 'preservim/tagbar'
Plug 'puremourning/vimspector'

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
Plug 'LumaKernel/fern-mapping-fzf.vim'
Plug 'antoinemadec/FixCursorHold.nvim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'
Plug 'airblade/vim-gitgutter'

" Javascript
" Plug 'eliba2/vim-node-inspect'

" Python
Plug 'gotcha/vimpdb'
Plug 'jmcantrell/vim-virtualenv'

" HTML
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'
call plug#end()

