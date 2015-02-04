" leader key
let mapleader = ","
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"My maps
nmap <C-o> :TagbarToggle<CR>
nmap <F8> :LustyFilesystemExplorerFromHere<CR>
map <C-l> :tabn<cr>             "下一个tab
map <C-h> :tabp<cr>             "上一个tab
map <C-n> :tabnew<cr>           "新tab
map <C-k> :bn<cr>               "下一个文件
map <C-j> :bp<cr>               "上一个文件
map <Leader>fs :LustyFilesystemExplorerFromHere<CR>
map <Leader>tb :TagbarToggle<CR>
map <Leader>newt :tabnew<CR>
map <Leader>buff :LustyBufferExplorer<CR>
map <Leader>ff :Autoformat<CR><CR>
imap <C-c> <CR><Esc>O

