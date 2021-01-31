let delimitMate_autoclose = 1

let delimitMate_matchpairs="(:),[:],{:}"
let delimitMate_nesting_quotes = ['"','`']

let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let delimitMate_expand_inside_quotes = 0
let delimitMate_jump_expansion = 1

let delimitMate_smart_quotes = 1
let delimitMate_smart_matchpairs = 1

au FileType python let b:delimitMate_nesting_quotes = ['"']
