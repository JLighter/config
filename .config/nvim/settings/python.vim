let g:python_host_prog="$HOME/.local/envs/neovim/bin/python"
let g:python3_host_prog="$HOME/.local/envs/neovim3/bin/python"

au BufNewFile,BufRead *.py set foldmethod=indent foldignore=#

let g:semshi#mark_selected_nodes=0
