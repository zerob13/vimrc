"指定配色方案为256色
"set t_Co=256
"set background=dark
set laststatus=2
if has('mac')
    set transparency=7
endif

let g:SuperTabDefaultCompletionType="context" 
set guifont=Monaco:h16
" colorscheme distinguished
" colorscheme kolor
colorscheme molokai

" AirLine settings
let g:airline_detect_modified=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_enable_domhtmlcss = 1

let g:numbers_exclude = ['tagbar', 'minibufexpl', 'nerdtree']

let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

set guioptions=T
