let g:python_host_prog="$HOME/.local/envs/neovim/bin/python"
let g:python3_host_prog="$HOME/.local/envs/neovim3/bin/python"

" Folding for python
let python_fold=1 
au BufNewFile,BufRead *.py set foldmethod=indent foldignore=#
