#!/usr/bin/env bash

# backup existed config files
for i in .vim vimfiles .vimrc .gvimrc; do
  # file or symbol link
  if [ -e ~/$i -o -h ~/$i ]; then
    # rm old backup
    if [ -e ~/$i.old ]; then
      rm -rf ~/$i.old
    fi
    # backup file or folder
    mv -f ~/$i ~/$i.old
  fi
done

git clone git://github.com/wongyouth/vimfiles ~/vimfiles
ln -s ~/vimfiles ~/.vim
echo "source ~/.vim/vimrc" > ~/.vimrc
echo "source ~/.vim/gvimrc" > ~/.gvimrc
cd ~/.vim
#git submodule init
#git submodule update

#vim +BundleInstall +qall

mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
. ~/.vim/bundle/neobundle.vim/bin/neoinstall
