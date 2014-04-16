"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"配置backspace键工作方式
set backspace=indent,eol,start
"显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
set ruler
"在状态栏显示正在输入的命令
set showcmd

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
"开启语法高亮功能
syntax enable
syntax on

"指定配色方案为256色
"set t_Co=256
set background=dark
colorscheme solarized

"设置搜索时忽略大小写
set ignorecase

"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a

"设置Tab宽度
set tabstop=4
"设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
set softtabstop=4
"设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab

"设置编码方式
set encoding=utf-8
"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set autochdir
set tags=tags;

"检测文件类型
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" My Plugins
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/a.vim'
Bundle 'flazz/vim-colorschemes'
"Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'ervandew/supertab'
Bundle 'zerob13/Conque-Shell'
Bundle 'sjbach/lusty'
Bundle 'cespare/vim-golang'
Bundle 'Blackrush/vim-gocode'
Bundle 'dgryski/vim-godef'
Bundle 'vim-scripts/xml.vim'
Bundle 'mattn/emmet-vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-commentary'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/Mark'
Bundle 'vim-scripts/vimtodo'
Bundle 'vim-scripts/pyflakes'

set laststatus=2
let g:Powline_symbols='fancy'
let g:SuperTabDefaultCompletionType="context" 
filetype plugin on
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
" set transparency=10

"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
colorscheme desert
" My nmaps
nmap <C-o> :TagbarToggle<CR>
nmap <F8> :LustyFilesystemExplorerFromHere<CR>
map <C-l> :tabn<cr>             "下一个tab
map <C-h> :tabp<cr>             "上一个tab
map <C-n> :tabnew<cr>           "新tab
map <C-k> :bn<cr>               "下一个文件
map <C-j> :bp<cr>               "上一个文件
map <F10> :ConqueTermTab zsh<cr>

"设置html css补全
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall

set guifont=Monaco:h16
"自动格式化Go文件
autocmd BufWritePre *.go :Fmt

"新建.c,.h,.sh,.java,py文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.py exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func SetTitle()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"\#########################################################################")
        call append(line("."), "\# File Name: ".expand("%"))
        call append(line(".")+1, "\# Author: zerob13")
        call append(line(".")+2, "\# mail: zerob13@gmail.com")
        call append(line(".")+3, "\# Created Time: ".strftime("%c"))
        call append(line(".")+4, "\#########################################################################")
        call append(line(".")+5, "\#!/bin/bash")
        call append(line(".")+6, "")
    elseif &filetype == 'python'
        call setline(1,"\#!/usr/bin/env python")
        call append(line("."),"\#-*- coding: utf-8 -*- ")
        call append(line(".")+1,"\#Author:  zerob13 <zerob13@gmail.com>")
        call append(line(".")+2,"")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."), "    > File Name: ".expand("%"))
        call append(line(".")+1, "    > Author: zerob13")
        call append(line(".")+2, "    > Mail: zerob13@gmail.com ")
        call append(line(".")+3, "    > Created Time: ".strftime("%c"))
        call append(line(".")+4, " ************************************************************************/")
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc
let g:gofmt_command = "goimports"
