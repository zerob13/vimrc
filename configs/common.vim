""关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"配置backspace键工作方式
set backspace=indent,eol,start
"设置历史记录条数
set history=1000
"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile
"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
"设置C/C++方式自动对齐
set autoindent
set cindent
set hidden
"设置搜索时忽略大小写
set ignorecase
"显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
set ruler
"在状态栏显示正在输入的命令
set showcmd
"开启语法高亮功能
syntax enable
syntax on
"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a

"Tab=2
set tabstop=2
set shiftwidth=2
"2 space = 1 tab
set softtabstop=2

set smarttab
"make tab as space,use [Ctrl + V + Tab] to add tab
set expandtab

"default encoding
set encoding=utf-8
"automatic test encoding
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set autochdir
set tags=tags;

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" use dash to open doc :gk
let g:investigate_use_dash=1
" add some filetype support
au BufNewFile,BufRead *.es6 set filetype=javascript
au BufNewFile,BufRead *.mst set filetype=html
au BufNewFile,BufRead *.dot set filetype=html
autocmd FileType vue syntax sync fromstart
" autocmd BufRead,BufNewFile *.vue setlocal filetype=javascript.vue

set foldmethod=syntax
set nofoldenable
