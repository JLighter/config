" Fold code by syntax
set foldmethod=syntax
set foldcolumn=0 

" Open all folds by default
set foldlevelstart=99

autocmd FileType html,yaml,yml
  \ setlocal  foldmethod=indent

" Folding for python
let python_fold=1 
au BufNewFile,BufRead *.py setlocal foldmethod=indent foldignore=#
