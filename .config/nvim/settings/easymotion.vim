let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Move to word
nmap mw <Plug>(easymotion-bd-w)
nmap maw <Plug>(easymotion-overwin-w)

nmap ms <Plug>(easymotion-f)
nmap mas <Plug>(easymotion-overwin-f)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" Move to line
nmap ml <Plug>(easymotion-bd-jk)
nmap mal <Plug>(easymotion-overwin-line)
