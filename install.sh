#!/bin/bash

git clone https://github.com/zerob13/vimrc.git  ~/.vim
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
cp ~/.vim/.vimrc ~/.vimrc
vim -c 'PluginInstall' -c 'q' -c 'q'
cd ~/.vim/bundle/tern_for_vim
npm install
npm install -g git://github.com/ramitos/jsctags.git
npm -g install js-beautify
