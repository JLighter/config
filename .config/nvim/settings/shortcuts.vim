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

" Re-open last closed buffer 
nmap <c-s-t> :vs<bar>:b#<CR>

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \d       : kill current buffer
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>bl :ls<CR>
nnoremap <Leader>bb :bp<CR>
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bg :e#<CR>
nnoremap <Leader>bd :bdelete<CR>
nnoremap <Leader>& :1b<CR>
nnoremap <Leader>é :2b<CR>
nnoremap <Leader>" :3b<CR>
nnoremap <Leader>' :4b<CR>
nnoremap <Leader>) :5b<CR>
nnoremap <Leader>§ :6b<CR>
nnoremap <Leader>è :7b<CR>
nnoremap <Leader>! :8b<CR>
nnoremap <Leader>ç :9b<CR>
nnoremap <Leader>à :10b<CR>

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
