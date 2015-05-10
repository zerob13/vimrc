# Zerob13's Vim config 

My Vim rc file

![render](https://raw.githubusercontent.com/zerob13/vimrc/master/screenshots/render.png)

Support GO/HTML/SASS/JS
Please make sure your vim has enabled python support && ruby support

![Screenshot](https://raw.githubusercontent.com/zerob13/vimrc/master/screenshots/config.png)

![license](https://img.shields.io/badge/license-wtfpl-blue.svg)

## How to install

### Auto Install

```shell
curl -fsSL https://raw.githubusercontent.com/zerob13/vimrc/master/install.sh | bash -
```


### Manual Install

```shell
git clone https://github.com/zerob13/vimrc.git  ~/.vim
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
cp ~/.vim/.vimrc ~/.vimrc
vim -c 'PluginInstall' -c 'q' -c 'q'
```

## Options (requires node.js)

### Auto Install Options

```shell
sh ~/.vim/others.sh
```

### Manual Install

[Install js-beautify](https://github.com/beautify-web/js-beautify/blob/master/README.md)    
```shell
npm -g install js-beautify
```
[vim-autoformat](https://github.com/Chiel92/vim-autoformat)  

```shell
go get -u github.com/jstemmer/gotags
cd ~/.vim/bundle/tern_for_vim
npm install
npm install -g git://github.com/ramitos/jsctags.git
```

> use __,ff__ to format js,css,html,sql,xml and json!

enjoy

## ScreenShots

### Autocomplete

![autocomplete](https://raw.githubusercontent.com/zerob13/vimrc/master/screenshots/autocomplete.gif)

### Code Format

![format](https://raw.githubusercontent.com/zerob13/vimrc/master/screenshots/autoformat.gif)

### Color themes

![themes](https://raw.githubusercontent.com/zerob13/vimrc/master/screenshots/colortheme.gif)

### Ctrl-P 

![ctrl-p](https://raw.githubusercontent.com/zerob13/vimrc/master/screenshots/ctrl-p.gif)

### Multiple-cursors

![multiple-cursors](https://raw.githubusercontent.com/zerob13/vimrc/master/screenshots/multi-select.gif)

### HTML 

![HTML](https://raw.githubusercontent.com/zerob13/vimrc/master/screenshots/html.gif)

### Git

![Git](https://raw.githubusercontent.com/zerob13/vimrc/master/screenshots/git.gif)

### Smart Line Number

![Number](https://raw.githubusercontent.com/zerob13/vimrc/master/screenshots/number.gif)

### Tagbar

![Tagbar](https://raw.githubusercontent.com/zerob13/vimrc/master/screenshots/tagbar.gif)


