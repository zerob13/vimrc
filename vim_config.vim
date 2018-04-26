" ________   _______ .______       ______   .______    __   ____   
"|       /  |   ____||   _  \     /  __  \  |   _  \  /_ | |___ \  
"`---/  /   |  |__   |  |_)  |   |  |  |  | |  |_)  |  | |   __) | 
"   /  /    |   __|  |      /    |  |  |  | |   _  <   | |  |__ <  
"  /  /----.|  |____ |  |\  \----|  `--'  | |  |_)  |  | |  ___) | 
" /________||_______|| _| `._____|\______/  |______/   |_| |____/  
"____    ____  __  .___  ___.      ______   ______   .__   __.  _______  __    _______  __    __  .______      _______ 
"\   \  /   / |  | |   \/   |     /      | /  __  \  |  \ |  | |   ____||  |  /  _____||  |  |  | |   _  \    |   ____|
" \   \/   /  |  | |  \  /  |    |  ,----'|  |  |  | |   \|  | |  |__   |  | |  |  __  |  |  |  | |  |_)  |   |  |__   
"  \      /   |  | |  |\/|  |    |  |     |  |  |  | |  . `  | |   __|  |  | |  | |_ | |  |  |  | |      /    |   __|  
"   \    /    |  | |  |  |  |    |  `----.|  `--'  | |  |\   | |  |     |  | |  |__| | |  `--'  | |  |\  \----|  |____ 
"    \__/     |__| |__|  |__|     \______| \______/  |__| \__| |__|     |__|  \______|  \______/  | _| `._____|_______|
                                                                                                                      
filetype off
"  common settings
try
    source ~/.vim/configs/common.vim
catch
endtry
" Plugins 
try
    call plug#begin('~/.vim/plugged')
    source ~/.vim/configs/plugin.vim
    call plug#end()
catch
endtry

filetype plugin indent on


if has('mac')
    "----------
    " only for yosemite 
    set shell=bash\ -l
    " ---------
endif

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
"try
"    source ~/.vim/configs/go.vim
"catch
"endtry

