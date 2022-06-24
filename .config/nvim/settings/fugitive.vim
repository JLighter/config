" Fugitive
function! ToggleGStatus()
    if buflisted(bufname('.git/index'))
        bd .git/index
    else
        Git
    endif
endfunction
command! ToggleGStatus :call ToggleGStatus()

nnoremap <silent> <leader>gs :ToggleGStatus<CR>
nnoremap <silent> <leader>gl :Gllog<CR>
nnoremap <silent> <leader>go :MerginalToggle<CR>
nnoremap <silent> <leader>gb :Git blame<CR>
nnoremap <silent> <leader>grl :Git reflog<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gd :Gdiffsplit<CR>
