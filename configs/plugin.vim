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
Plugin 'Shougo/neocomplete.vim'
" Snippets 
Plugin 'honza/vim-snippets'
" go
Plugin 'fatih/vim-go'
" gui
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdtree.git'
" html
Plugin 'vim-scripts/xml.vim'
Plugin 'mattn/emmet-vim'
" Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'AndrewRadev/vim-eco'
" Plugin 'JulesWang/css.vim' // only necessary if your Vim version < 7.4
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'mustache/vim-mustache-handlebars'
" Docker
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
" Dash Mac only
Plugin 'rizzatti/dash.vim'
" TypeScript
Plugin 'tmhedberg/matchit'
Plugin 'leafgarland/typescript-vim'

let g:formatprg_coffee = "coffeeformat"
let g:formatprg_args_cs = ""
let g:neocomplete#enable_at_startup = 1
