command! LightlineReload call LightlineReload()

function! LightlineReload()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

let g:lightline_gitdiff#indicator_added = '+'
let g:lightline_gitdiff#indicator_deleted = '-'
let g:lightline_gitdiff#indicator_modified = '!'
let g:lightline_gitdiff#min_winwidth = '70'

" Mode name
let g:lightline = {
      \   'mode_map': {
      \     'n' : 'N',
      \     'i' : 'I',
      \     'R' : 'R',
      \     'v' : 'V',
      \     'V' : 'VL',
      \     "\<C-v>": 'VB',
      \     'c' : 'C',
      \     's' : 'S',
      \     'S' : 'SL',
      \     "\<C-s>": 'SB',
      \     't': 'T',
      \   },
      \   'colorscheme': 'wombat',
      \   'active': {
      \     'left': [ [ 'mode', 'paste' ],
      \               [ 'method','readonly', 'filename', 'modified' ],
      \               [ 'gitbranch' ]
      \             ],
      \     'right': [ [ 'venv' ],
      \                [ 'linter_errors', 'linter_ok' ],
      \                [ 'lineinfo' ],
      \                [ 'percent' ],
      \                [ 'fileformat', 'fileencoding', 'filetype' ]
      \              ]
      \   },
      \   'component_expand': {
      \    'linter_errors': 'lightline#ale#errors',
      \    'linter_ok': 'lightline#ale#ok',
      \   },
      \   'component_type': {
      \       'linter_errors': 'error',
      \       'linter_ok': 'right',
      \   },
      \   'component_function': {
      \     'venv': 'virtualenv#statusline',
      \     'gitbranch': 'FugitiveHead',
      \     'method': 'NearestMethodOrFunction'
      \   }
      \ }


