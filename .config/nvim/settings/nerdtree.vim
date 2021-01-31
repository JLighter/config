" NERDTree
" Open it like netrw
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
function! NERDTreeToggle()
    if buflisted(bufname('.git/index'))
        bd .git/index
    else
        Gstatus
    endif
endfunction

map - :NERDTreeToggle<CR>

" Mirror nerdtree on buffer enter
autocmd BufEnter * NERDTreeMirror
autocmd BufWinEnter * NERDTreeMirror

augroup WipeNetrw
  autocmd!
  autocmd BufHidden * if &ft == 'netrw' | call timer_start(100, function('WipeBuffer', [expand('<afile>')])) | endif
augroup END

" Disable netrw 
let loaded_netrwPlugin = 0
