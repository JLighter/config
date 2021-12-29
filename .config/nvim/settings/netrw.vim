" For more informations about this file see https://vonheikemen.github.io/devlog/tools/using-netrw-let -builtin-file-explorer/
let g:netrw_banner = 0

let g:netrw_liststyle = 3
let g:netrw_keepdir = 0

let g:netrw_winsize = 30

let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

let g:netrw_localcopydircmd = "cp -r"

hi! link netrwMarkFile Search


function! NetrwMapping()
    nmap <buffer> H u
    nmap <buffer> h -^
    nmap <buffer> l <CR>
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END
