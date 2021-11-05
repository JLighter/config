" Appearence
syntax on
set cmdheight=1
" Don't pass messages to |ins-completion-menu|.
set shortmess+=Sca

augroup toggle_relative_number
	autocmd InsertEnter * :setlocal norelativenumber
	autocmd InsertLeave * :setlocal relativenumber

set nowrap
set number relativenumber
set noshowmode

set synmaxcol=512
syntax sync minlines=100

let g:indent_guides_enable_on_vim_startup = 1

set guioptions-=e
set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

" Enable true colors
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

:function! Light()
:  set background=light
:  colorscheme PaperColor
:  let g:lightline.colorscheme='one'
:  runtime autoload/lightline/colorscheme/one.vim
:  call LightlineReload()
:endfunction

:function! Dark()
:  set background=dark
:  let g:gruvbox_contrast_dark='hard'
:  colorscheme palenight
:  hi! Normal ctermbg=NONE guibg=NONE
:  hi! Normal ctermbg=NONE guibg=NONE
:  let g:lightline.colorscheme='palenight'
:  runtime autoload/lightline/colorscheme/palenight.vim
:  call LightlineReload()
:endfunction

nmap <leader>li :call Light()<CR>:echo "Light mode !"<CR>
nmap <leader>da :call Dark()<CR>:echo "Dark mode !"<CR>

call Dark()

if exists('$TMUX')
  set noshowmode
  set noruler
  set laststatus=0
  set noshowcmd
endif
