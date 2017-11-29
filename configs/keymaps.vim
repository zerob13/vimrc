" leader key
let mapleader = ","
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"My maps
nmap <C-o> :TagbarToggle<CR>
nmap <F8> :LustyFilesystemExplorerFromHere<CR>
nmap <F9> :NERDTreeToggle<CR>
" map <C-l> :tabn<cr>             "下一个tab
" map <C-h> :tabp<cr>             "上一个tab
" map <C-n> :tabnew<cr>           "新tab
map <C-k> :bn<cr>               "下一个文件
map <C-j> :bp<cr>               "上一个文件
map <Leader>fs :LustyFilesystemExplorerFromHere<CR>
map <Leader>tb :TagbarToggle<CR>
map <Leader>newt :tabnew<CR>
map <Leader>buff :LustyBufferExplorer<CR>
" map <Leader>ff :Autoformat<CR><CR>
map <Leader>ff :Neoformat<CR><CR>
map <Leader>fjs :Neoformat! javascript standard<CR><CR>
map <Leader>fpug :Neoformat! jade<CR><CR>
map <Leader>fscss :Neoformat! scss<CR><CR>
map <Leader>t :NERDTreeToggle<CR>
imap <C-c> <CR><Esc>O
nmap <silent> <leader>da <Plug>DashGlobalSearch
map <Leader>bn :bNext<CR>
map <Leader>bb :bprevious<CR>
map <Leader>bw :bdelete<CR>
map <Leader>fh :Neoformat! html<CR>
map <Leader>fc :Neoformat! css prettier<CR>

fu! FormatVue(...)
  execute '/<script>/+1,/<\/script>/-1 Neoformat! javascript standard'
  " execute '/<template>/+1,/<\/template>/-1 !js-beautify --stdin'
  " execute '/<template lang="pug">/+1,/<\/template>/-1 !pug-beautifier -s 2 --stdin'
endfunction

augroup vimrc
  au FileType vue         noremap  <buffer> <leader>ff :execute FormatVue()<CR>
  au FileType javascript  noremap  <buffer> <leader>ff :Neoformat! javascript jsbeautify<CR>
  au FileType json        noremap  <buffer> <leader>ff :Neoformat! json prettier<CR>
  au FileType css         noremap  <buffer> <leader>ff :Neoformat! css prettier<CR>
  au FileType scss        noremap  <buffer> <leader>ff :Neoformat! scss<CR>
augroup END

fu! Splitme(...)
  execute 'sp'
  execute 'vsp'
  execute 'wincmd j'
  execute 'vsp'
endfunction

map <Leader>pp :execute Splitme()<CR>
