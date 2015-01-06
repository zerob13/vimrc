"检测文件类型
filetype off
" Plugins 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
try
source ~/.vim/configs/plugin.vim
catch
endtry
call vundle#end()
filetype plugin indent on

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

