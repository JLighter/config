nnoremap <silent> <leader>ds      :call vimspector#Launch()<CR>
nnoremap <silent> <leader>dx      :call vimspector#Reset()<CR>
nnoremap <silent> <leader>dc      :call vimspector#Continue()<CR>
nnoremap <silent> <leader>drc     :call vimspector#RunToCursor()<CR>
nnoremap <silent> <leader>do      <Plug>VimspectorStepOver
nnoremap <silent> <leader>dj      <Plug>VimspectorStepInto
nnoremap <silent> <leader>dk      <Plug>VimspectorStepOut
nnoremap <silent> <leader>db      :call vimspector#ToggleBreakpoint()<CR>
nnoremap <silent> <leader>ddab    :call vimspector#ClearBreakpoints()<CR>
nnoremap <silent> <leader>dw      :call vimspector#AddWatch()<CR>
nnoremap <silent> <leader>ddw     :call vimspector#DeleteWatch()<CR>

