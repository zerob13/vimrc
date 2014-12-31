"  common settings
try
source ~/.vim/configs/common.vim
catch
endtry

"----------
" only for yosemite 
set shell=bash\ -l
" ---------

" gui
try
source ~/.vim/configs/gui.vim
catch
endtry

" html
try
source ~/.vim/configs/html.vim
catch
endtry


"  keys
try
source ~/.vim/configs/keymaps.vim
catch
endtry

" go-lang
try
source ~/.vim/configs/go.vim
catch
endtry

call vundle#end()
filetype plugin indent on
