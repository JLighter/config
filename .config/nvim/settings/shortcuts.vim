" Same as tmux shortcuts
nmap <leader>- :sb<CR>
nmap <leader>/ :vertical sb<CR>
nmap <leader>t :tab sb<CR>
set splitbelow
set splitright

" resize horzontal split window
nmap <Down> <C-W>-<C-W>-
nmap <Up> <C-W>+<C-W>+

nmap S :%s//g<Left><Left>

" resize vertical split window
nmap <Right> <C-W>><C-W>>
nmap <Left> <C-W><<C-W><

" Remove arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Fuzzyfuz config
nnoremap <C-p> :GFiles<CR>
nmap <leader><leader> :Rg<CR>

" Mapping to switch between tabs
" Ctrl-Alt-l
nnoremap <C-t>l :tabn<CR>
" Ctrl-Alt-h
nnoremap <C-t>h :tabp<CR>
" Ctrl-Alt-j
nnoremap <C-t>j :tabl<CR>
" Ctrl-Alt-k
nnoremap <C-t>k :tabr<CR>

" Nextval 
nmap <silent> + <Plug>nextvalInc
nmap <silent> = <Plug>nextvalDec

" Easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>
nnoremap <silent> <Leader>cl :match<CR>
