" GitGutter
let g:gitgutter_highlight_lines                = 0
let g:gitgutter_map_keys                       = 1
let g:gitgutter_max_signs                      = 200
let g:gitgutter_realtime                       = 1
let g:gitgutter_eager                          = 1
let g:gitgutter_diff_args                      = '--ignore-space-at-eol'
let g:gitgutter_grep                           = 'rg'
let g:gitgutter_preview_win_floating           = 1
let g:gitgutter_set_sign_backgrounds           = 0
let g:gitgutter_sign_added                     = '+'
let g:gitgutter_sign_modified                  = '~'
let g:gitgutter_sign_removed                   = '-'
let g:gitgutter_sign_removed_first_line        = '^'
let g:gitgutter_sign_modified_removed          = '≤'
let g:gitgutter_override_sign_column_highlight = 1
highlight clear SignColumn

nmap <space>h] <Plug>(GitGutterNextHunk)
nmap <space>h[ <Plug>(GitGutterPrevHunk)

command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse']}), <bang>0)

