function! FernOpen()
  Fern . -reveal=% -stay
endfunction
command! FernOpen :call FernOpen()

nmap - :FernOpen<CR>
nmap _ :Fern . -reveal=% -toggle -drawer<CR>

" NerdFont
let g:fern#renderer = "nerdfont"

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

  nmap <buffer> r <Plug>(fern-action-reload)
  nmap <buffer> cd <Plug>(fern-action-cd)
  nmap <buffer> CD gg<Plug>(fern-action-cd)<C-o>

  nmap <buffer> C-r <Plug>(fern-action-redraw)<C-o>
  nmap <buffer> C-x <Plug>(fern-action-leave)<C-o>
  nmap <buffer> D <Plug>(fern-action-remove)<C-o>

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

" Customize fern fzf mapping
let g:fern#mapping#fzf#disable_default_mappings = 1
function! s:init_fern_mapping_fzf() abort
  nmap <buffer> <space><space> <Plug>(fern-action-fzf-both)
endfunction

augroup my-fern-mapping-fzf
  autocmd! *
  autocmd FileType fern call s:init_fern_mapping_fzf()
augroup END

" Disable netrw
let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1
