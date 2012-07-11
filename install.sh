#!/usr/bin/env bash

# backup existed config files
for i in .vim vimfiles .vimrc .gvimrc; do
  if [ -e ~/$i -o -h ~/$i ]; then
    mv -f ~/$i ~/$i.old
  fi
done

git clone git://github.com/wongyouth/vimfiles ~/vimfiles
ln -s ~/vimfiles ~/.vim
echo "source ~/.vim/vimrc" > ~/.vimrc
echo "source ~/.vim/gvimrc" > ~/.gvimrc
cd ~/.vim
git submodule init
git submodule update

vim +BundleInstall +qall
