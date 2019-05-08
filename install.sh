#!/bin/bash
echo 'Downloading zerob13 vimrc...'
git clone https://github.com/zerob13/vimrc.git  ~/.vim
echo 'Downloading Vundle...'
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
echo 'configing...'
ln -s ~/.vim/.vimrc ~/.vimrc
echo 'run sh ~/.vim/others.sh to install jsctags and js-beautify (may need root)'
vim -c 'PlugInstall' -c 'q' -c 'q' 
