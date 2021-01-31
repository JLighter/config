let g:ycm_server_python_interpreter                 = ''
let g:ycm_echo_current_diagnostic                   = 1
let g:ycm_min_num_of_chars_for_completion           = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_stop_completion                  = [ '<C-y>' ]
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion  = 1

nnoremap K :YcmCompleter GetDoc<CR>
nnoremap gj :YcmCompleter GoTo<CR>
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap gD :YcmCompleter GetType<CR>
nnoremap <leader>rn :YcmCompleter RefactorRename<CR>
nnoremap <leader>af :YcmCompleter FixIt<CR>

