# vimrc

My Vim rc file
Support GO/HTML/SASS/JS
Please make sure your vim has enabled python support && ruby support

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
