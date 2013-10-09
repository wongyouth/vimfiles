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
Bundle 'tpope/vim-endwise'

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
" successor of zencoding
Bundle 'mattn/emmet-vim'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'vim-scripts/loremipsum'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-ruby/vim-ruby'
Bundle 'lucapette/vim-ruby-doc'
Bundle 'lucapette/vim-jquery-doc'
Bundle 'scrooloose/syntastic'
"Bundle 'wincent/Command-T'
Bundle 'sjl/gundo.vim'
Bundle 'slim-template/vim-slim'
Bundle 'vim-scripts/sudo.vim'
Bundle 'vim-scripts/BufOnly.vim'
" statusline
Bundle 'bling/vim-airline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'airblade/vim-gitgutter'

"--------------------------
" tool for explorer
"--------------------------
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/unite-outline'
"Bundle 'corntrace/bufexplorer'
"Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/ctags.vim'
Bundle 'mileszs/ack.vim'

"--------------------------
" filetype syntax highlight
"--------------------------
Bundle 'groenewege/vim-less'
Bundle 'kchmck/vim-coffee-script'
" use builtin markdown support (vim 7.3)
"Bundle 'plasticboy/vim-markdown'
Bundle 'depuracao/vim-rdoc'
Bundle 'tpope/vim-haml'
"Bundle 'mamut/vim-css-hex'
Bundle 'skammer/vim-css-color'
Bundle 'nono/vim-handlebars'
Bundle 'vim-scripts/AnsiEsc.vim'

"--------------------------
" color scheme
"--------------------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'endel/vim-github-colorscheme'

"--------------------------
" snipmate
"--------------------------
"Bundle 'garbas/vim-snipmate' "replaced with neoshippet
"Bundle 'tomtom/tlib_vim'
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'honza/vim-snippets'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Shougo/neosnippet.vim'
Bundle 'wongyouth/vim-snippets'
