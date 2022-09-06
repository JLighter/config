" Fugitive
nnoremap <silent> <leader>gs :Git<CR>
nnoremap <silent> <leader>gl :Gllog<CR>
nnoremap <silent> <leader>gb :Git blame<CR>
nnoremap <silent> <leader>gr :Git reflog<CR>
nnoremap <silent> <leader>gm :G mergetool<CR>
nnoremap <silent> <leader>gd :Gdiffsplit<CR>
nnoremap <silent> <leader>gc :Git commit<CR>
nnoremap <silent> <leader>go :Git branch<CR>
nnoremap <silent> <leader>gpl :Git pull 
nnoremap <silent> <leader>gps :Git push 
nnoremap <silent> <leader>gpf :Git fetch 
nnoremap <silent> <leader>gpfa :Git fetch --all<CR>
nnoremap <silent> <leader>gB :Git browse<CR>

" Clean fugitive buffers after using them
autocmd BufReadPost fugitive://* set bufhidden=delete

