#!/bin/bash

git clone https://github.com/zerob13/vimrc.git  ~/.vim
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
cp ~/.vim/.vimrc ~/.vimrc
vim -c 'PluginInstall' -c 'q' -c 'q'
echo 'run sh ~/.vim/others.sh to install jsctags and js-beautify (may need root)'
