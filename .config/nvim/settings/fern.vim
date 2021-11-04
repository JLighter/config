function! FernOpen()
  Fern . -reveal=% -stay
endfunction
command! FernOpen :call FernOpen()

nmap - :FernOpen<CR>
nmap _ :Fern . -reveal=% -toggle -drawer<CR>

" NerdFont
let g:fern#renderer = "nerdfont"
let g:fern#disable_default_mappings = 1

let g:fern#default_exclude = '^\%(\.git\)$'

function! s:init_fern() abort
  echo "This function is called ON a fern buffer WHEN initialized"

  " Define NERDTree like mappings
  nmap <buffer> t <Plug>(fern-action-open:tabedit)
  nmap <buffer> T <Plug>(fern-action-open:tabedit)gT
  nmap <buffer> - <Plug>(fern-action-open:split)
  nmap <buffer> / <Plug>(fern-action-open:vsplit)
  nmap <buffer> I <Plug>(fern-action-hidden:toggle)
  nmap <buffer> o <Plug>(fern-action-mark:toggle)
  nmap <buffer> A <Plug>(fern-action-new-path)
  
  nmap <buffer> <CR> <Plug>(fern-action-enter)
  nmap <buffer> <BS> <Plug>(fern-action-leave)

  nmap <buffer> R <Plug>(fern-action-reload)
  nmap <buffer> cd <Plug>(fern-action-cd)
  nmap <buffer> CD gg<Plug>(fern-action-cd)<C-o>

  nmap <buffer> D <Plug>(fern-action-remove)

  nmap <buffer> m <Plug>(fern-action-move)
  nmap <buffer> c <Plug>(fern-action-copy)
  nmap <buffer> r <Plug>(fern-action-rename)
  nmap <buffer> x <Plug>(fern-action-open:system)

  nmap <buffer> h <Plug>(fern-action-collapse)

  nmap <buffer><expr>
      \ <Plug>(fern-my-expand-or-collapse)
      \ fern#smart#leaf(
      \   "\<Plug>(fern-action-open)",
      \   "\<Plug>(fern-action-expand)",
      \   "\<Plug>(fern-action-collapse)",
      \ )

  nmap <buffer><nowait> l <Plug>(fern-my-expand-or-collapse)

  nmap <buffer> q :<C-u>quit<CR>

  " Add any code to customize fern buffer
endfunction

" GlyphPalette integration
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

" Disable netrw
let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1
