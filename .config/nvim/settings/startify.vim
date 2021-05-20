let g:startify_custom_header = [
        \ '   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
        \ '   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
        \ '   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
        \ '   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
        \ '   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
        \ '   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
        \]

let g:startify_enable_special         = 0
let g:startify_files_number           = 20
let g:startify_relative_path          = 1
let g:startify_change_to_dir          = 1
let g:startify_update_oldfiles        = 1
let g:startify_session_autoload       = 1
let g:startify_session_delete_buggers = 1
let g:startify_session_persistence    = 1
let g:startify_session_sort           = 0
let g:sstartify_change_vcs_to_root    = 1
set sessionoptions                    =curdir,folds,help,tabpages,winpos
let g:startify_skiplist = [
            \  'runtime/doc/.*\.txt$',
            \  'bundle/.*/doc/.*\.txt$',
            \  'plugged/.*/doc/.*\.txt$',
            \  '/.git/',
            \  'fugitiveblame$',
            \  escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc/.*\.txt$'
            \  ]

" autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif

let g:startify_lists = [
            \ { 'header': ['   Current dir'],       'type': 'dir' },
            \ { 'header': ['   Sessions'],          'type': 'sessions' },
            \ { 'header': ['   Recent'],            'type': 'files' },
            \ ]

function SSaveAutoName()
    let name = fnamemodify(getcwd(), ':~:t')
    execute 'SSave ' . name 
endfunction
command! SSaveAutoName :call SSaveAutoName()

map <leader>ss :SSaveAutoName<CR>
map <leader>sx :SSaveAutoName<CR> :SClose<CR>
map <leader>sq :SClose<CR>

" Exit all and show startify
nnoremap <Leader>X :bufdo bwipeout<CR>
