" [Prettier] Ale fixers
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5'

" Disable warnings about trailing whitespace.
let b:ale_warn_about_trailing_whitespace = 0

" let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'python': ['yapf', 'isort'],
\   'css': ['prettier'],
\   'sh': ['shellcheck'],
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\   'python': ['pylint'],
\   'css': ['prettier'],
\   'sh': ['shfmt'],
\}

let g:ale_linters_explicit = 1
let g:ale_fixers_explicit = 1

" Do not lint or fix minified files.
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}

" Use coc for diagnostic
let g:ale_disable_lsp = 1

" Run prettier with gp
nnoremap <leader>fA :silent ALEFixSuggest<CR>
nnoremap <leader>fa :silent ALEFix<CR>

" Change linter display
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" keep the sign gutter open
let g:ale_sign_column_always = 1

" Do not save on text change
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0

let g:ale_lint_delay = 1000
