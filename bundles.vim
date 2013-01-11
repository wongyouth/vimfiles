"------------------------------------------------------------
" when in Mac osx vi, if filetype is already off,
" calling filetype off causes a bad exit status
"------------------------------------------------------------
filetype on
"------------------------------------------------------------
set nocompatible               " be iMproved
filetype off                   " required!

"--------------------
" enable vundle
"--------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"--------------------------
" tpope plugins
"--------------------------
" disable pathogen, use vundle instead
"runtime bundle/pathogen/autoload/pathogen.vim
"call pathogen#infect()
"Bundle 'tpope/tpope/vim-pathogen'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-rails'

"--------------------------
" utility
"--------------------------
Bundle 'edsono/vim-matchit'
Bundle 'Raimondi/delimitMate'
Bundle 'greyblake/vim-preview'
Bundle 'vim-scripts/jsbeautify'
Bundle 'vim-scripts/The-NERD-Commenter'
Bundle 'godlygeek/tabular'
Bundle 'nvie/vim-togglemouse'
Bundle 'mattn/zencoding-vim'
" alternative for zencoding
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'wojtekmach/vim-rename'
Bundle 'vim-scripts/loremipsum'
Bundle 'Lokaltog/vim-easymotion'

"--------------------------
" tool for explorer
"--------------------------
Bundle 'corntrace/bufexplorer'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/ctags.vim'
"Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/BufOnly.vim'

"--------------------------
" filetype syntax highlight
"--------------------------
Bundle 'groenewege/vim-less'
Bundle 'kchmck/vim-coffee-script'
" use builtin markdown support (vim 7.3)
"Bundle 'plasticboy/vim-markdown'
Bundle 'depuracao/vim-rdoc'
Bundle 'mamut/vim-css-hex'

"--------------------------
" color scheme
"--------------------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'endel/vim-github-colorscheme'
Bundle 'rickharris/vim-monokai'

"--------------------------
" snipmate
"--------------------------
Bundle 'garbas/vim-snipmate'
Bundle 'honza/snipmate-snippets'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
