Plug 'sjbach/lusty'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/Mark'
"Plug 'Keithbsmiley/investigate.vim'
Plug 'tpope/vim-fugitive'
"Plug 'SirVer/ultisnips'
" Plug 'Chiel92/vim-autoformat'
" Plug 'w0rp/ale'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier'
Plug 'Raimondi/delimitMate'
Plug 'rking/ag.vim'
" Plug 'Shougo/neocomplete.vim'
" Snippets
Plug 'honza/vim-snippets'
" go
Plug 'fatih/vim-go'
" python
Plug 'klen/python-mode'
" gui
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'flazz/vim-colorschemes'
Plug 'ervandew/supertab'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'myusuf3/numbers.vim'
Plug 'scrooloose/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
" html
Plug 'vim-scripts/xml.vim'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
" Plug 'othree/yajs.vim'
" Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
"Plug 'marijnh/tern_for_vim'
"Plug 'AndrewRadev/vim-eco'
" Plug 'JulesWang/css.vim' // only necessary if your Vim version < 7.4
Plug 'cakebaker/scss-syntax.vim'
Plug 'mustache/vim-mustache-handlebars'
" Plug 'darthmall/vim-vue'
Plug 'posva/vim-vue'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-pug'
"Plug 'gorodinskiy/vim-coloresque'
" Docker
"Plug 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
Plug 'ekalinin/Dockerfile.vim'
" Dash Mac only
"Plug 'rizzatti/dash.vim'
" TypeScript
"Plug 'tmhedberg/matchit'
"Plug 'leafgarland/typescript-vim'
"rest
Plug 'diepm/vim-rest-console'
Plug 'easymotion/vim-easymotion'
Plug 'vim-syntastic/syntastic'
Plug 'sekel/vim-vue-syntastic'


let g:neocomplete#enable_at_startup = 1
let g:neoformat_enabled_vue = ['prettier']
" let g:ale_fix_on_save = 1
" let g:ale_linter_aliases={'vue.html.javascript.css': ['html', 'css', 'scss', 'javascript']}
" let g:ale_linter_aliases.vue = 'html.css.scss.javascript'
" let g:ale_linters = {'vue':['eslint'],'javascript':['eslint'],'html':[],'css':[],'scss':[]}
" let g:ale_fixers = {'vue':['eslint'],'javascript':['eslint'],'html':[],'css':[],'pug':['trim_whitespace']}
" let g:formatprg_coffee = "coffeeformat"
" let g:formatprg_args_cs = ""
" let g:formatdef_pug_beautifier = "'pug-beautifier -s 2'"
" let g:formatters_pug = ['pug_beautifier']
" let g:formatters_javascript_jsx= ['eslint_local']
" let g:formatters_vue_html_javascript_css= ['eslint_local']
" autocmd FileType pug let b:autoformat_autoindent=0
"autocmd FileType vue let b:autoformat_autoindent = 0


" function! Multiple_cursors_before()
"     exe 'NeoCompleteLock'
"     echo 'Disabled autocomplete'
" endfunction

" function! Multiple_cursors_after()
"     exe 'NeoCompleteUnlock'
"     echo 'Enabled autocomplete'
" endfunction
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=31
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ "Unknown"   : "?"
      \ }

let g:prettier#config#single_quote = 'true'
let g:prettier#config#semi = 'false'
let g:prettier#config#trailing_comma = 'none'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "active_filetypes": ["ruby", "php"],
        \ "passive_filetypes": ["vue","javascript"] }

let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
    let g:syntastic_vue_eslint_exec = local_eslint
endif
let g:airline_extensions = []
