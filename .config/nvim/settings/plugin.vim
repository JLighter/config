call plug#begin('~/.vim/bundle')

" Utils
Plug 'vim-scripts/nextval'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/vimproc.vim'
Plug 'powerman/vim-plugin-autosess'
Plug 'KabbAmine/vCoolor.vim'

" Appearance
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'shinchu/lightline-gruvbox.vim'

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

" Autocompletion
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"" Coc Install (run these commands when installing coc for the first time
"" vim -c 'CocInstall -sync coc-vetur coc-tsserver coc-javascript coc-actions coc-python coc-html coc-css coc-php coc-emmet coc-json coc-spell-checker coc-xml coc-yaml coc-markdown coc-cmake coc-calc coc-browser coc-angular coc-actions coc-git|q'

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
Plug 'andreafrancia/trash-cli'
Plug 'b4b4r07/gomi' 

" Git
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'
Plug 'airblade/vim-gitgutter'

" Javascript
Plug 'eliba2/vim-node-inspect'

" Python
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'gotcha/vimpdb'
Plug 'jmcantrell/vim-virtualenv'

" HTML
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
call plug#end()

