"Bundles
Bundle 'fatih/vim-go'

"config
filetype plugin on
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on

let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
