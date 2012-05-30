" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" origin repos on github

" enable bundle
"runtime bundle/pathogen/autoload/pathogen.vim
"call pathogen#infect()

" tpope plugins
"Bundle 'tpope/tpope/vim-pathogen' " use vundle instead
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-rails'

" utility
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

"Bundle 'wojtekmach/vim-rename' " use NERD tree menu instead

" tool for explorer
Bundle 'corntrace/bufexplorer'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'vim-scripts/taglist.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/ctags.vim'

" filetype syntax highlight
Bundle 'groenewege/vim-less'
Bundle 'kchmck/vim-coffee-script'
Bundle 'plasticboy/vim-markdown'
Bundle 'depuracao/vim-rdoc'
" Bundle 'mamut/vim-css-hex' " need gui env

" color schema
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'

" snipmate
Bundle 'garbas/vim-snipmate'
Bundle 'honza/snipmate-snippets'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'

