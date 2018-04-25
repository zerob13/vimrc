Plugin 'gmarik/Vundle.vim'
Plugin 'sjbach/lusty'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/Mark'
"Plugin 'Keithbsmiley/investigate.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'SirVer/ultisnips'
" Plugin 'Chiel92/vim-autoformat'
" Plugin 'w0rp/ale'
Plugin 'sbdchd/neoformat'
Plugin 'prettier/vim-prettier'
Plugin 'Raimondi/delimitMate'
Plugin 'rking/ag.vim'
Plugin 'Shougo/neocomplete.vim'
" Snippets
Plugin 'honza/vim-snippets'
" go
Plugin 'fatih/vim-go'
" python
Plugin 'klen/python-mode'
" gui
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
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
Plugin 'digitaltoad/vim-pug'
"Plugin 'gorodinskiy/vim-coloresque'
" Docker
"Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
Plugin 'ekalinin/Dockerfile.vim'
" Dash Mac only
"Plugin 'rizzatti/dash.vim'
" TypeScript
"Plugin 'tmhedberg/matchit'
"Plugin 'leafgarland/typescript-vim'
"rest
Plugin 'diepm/vim-rest-console'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-syntastic/syntastic'
Plugin 'sekel/vim-vue-syntastic'

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
