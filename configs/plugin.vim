Plugin 'gmarik/Vundle.vim'
Plugin 'sjbach/lusty'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/Mark'
Plugin 'Keithbsmiley/investigate.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Raimondi/delimitMate'
Plugin 'rking/ag.vim'
"Plugin 'Shougo/neocomplete.vim'
" Snippets
Plugin 'honza/vim-snippets'
" go
Plugin 'fatih/vim-go'
" gui
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdtree.git'
" html
Plugin 'vim-scripts/xml.vim'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
" Plugin 'othree/yajs.vim'
" Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
"Plugin 'marijnh/tern_for_vim'
"Plugin 'AndrewRadev/vim-eco'
" Plugin 'JulesWang/css.vim' // only necessary if your Vim version < 7.4
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'darthmall/vim-vue'
Plugin 'posva/vim-vue'
Plugin 'mxw/vim-jsx'
"Plugin 'gorodinskiy/vim-coloresque'
" Docker
"Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
Plugin 'ekalinin/Dockerfile.vim'
" Dash Mac only
Plugin 'rizzatti/dash.vim'
" TypeScript
"Plugin 'tmhedberg/matchit'
"Plugin 'leafgarland/typescript-vim'

"let g:formatprg_coffee = "coffeeformat"
let g:formatprg_args_cs = ""
let g:neocomplete#enable_at_startup = 1


" function! Multiple_cursors_before()
"     exe 'NeoCompleteLock'
"     echo 'Disabled autocomplete'
" endfunction

" function! Multiple_cursors_after()
"     exe 'NeoCompleteUnlock'
"     echo 'Enabled autocomplete'
" endfunction
