let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Move to word
nmap <leader>mw <Plug>(easymotion-bd-w)
nmap <leader>Mw <Plug>(easymotion-overwin-w)

nmap <leader>ms <Plug>(easymotion-f)
nmap <leader>Ms <Plug>(easymotion-overwin-f)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" Move to line
nmap <Leader>ml <Plug>(easymotion-bd-jk)
nmap <Leader>Ml <Plug>(easymotion-overwin-line)
