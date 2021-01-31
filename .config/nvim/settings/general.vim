set encoding=UTF-8
set nocompatible
let mapleader=' '

set autoindent
set smartindent

set runtimepath+=~/.vim_runtime
set signcolumn=yes
set shiftwidth=2
set mouse=n
set backspace=indent,eol,start
" set ttymouse=xterm2
" TextEdit might fail if hidden is not set.
set hidden
set autoread
set ttyfast
set laststatus

" show existing tab with 2 spaces width
" when indenting with '>', use 2 spaces width
" On pressing tab, insert 2 spaces
set expandtab

" Keep cursor on middle of the screen
set scrolloff=3
set sidescrolloff=5
set nocursorline
set lazyredraw

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100
set visualbell

set wildmenu
set wildmode=list:longest

set showmode
set showcmd
" Swap file
set directory=~/.vim/swp/

" No backup
set nobackup
set nowritebackup

" Undo file
set undofile
set undodir=~/.vim/undodir

" Fold code by syntax
set foldmethod=syntax
set foldcolumn=0 
let python_fold=1 

" Open all folds by default
set foldlevelstart=99
set spelllang=en,fr

set ignorecase
set smartcase
