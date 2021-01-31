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

" Fugitive
function! ToggleGStatus()
    if buflisted(bufname('.git/index'))
        bd .git/index
    else
        Gstatus
    endif
endfunction
command! ToggleGStatus :call ToggleGStatus()

nnoremap <silent> <leader>gs :ToggleGStatus<CR>
nnoremap <silent> <leader>gl :Gllog<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>go :Merginal<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
nnoremap <silent> <leader>gE :Gedit<space>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gR :Gread<space>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gW :Gwrite!<CR>
nnoremap <silent> <leader>gq :Gwq<CR>
nnoremap <silent> <leader>gQ :Gwq!<CR>

" Remove arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Fuzzyfuz config
nnoremap <C-p> :GFiles<CR>
nmap <leader><leader> :Rg<CR>

" Buffers 
" Jump to the existing window if possible
let g:fzf_buffers_jump = 1
let g:fzf_preview_window = 'right:40%'

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
nnoremap <Leader>bf :bn<CR>
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

" Folding 
map <leader>za zM
map <leader>zo zR
map za zA

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

" Wipe Registers
" let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
" for r in regs
"   call setreg(r, [])
" endfor
