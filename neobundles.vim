if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc', {
\ 'build' : {
\     'windows' : 'make -f make_mingw32.mak',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'unix' : 'make -f make_unix.mak',
\    },
\ }

"--------------------------
" tpope plugins
"--------------------------
" disable pathogen, use vundle instead
"runtime bundle/pathogen/autoload/pathogen.vim
"call pathogen#infect()
"NeoBundle 'tpope/tpope/vim-pathogen'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-endwise'

"--------------------------
" utility
"--------------------------
NeoBundle 'edsono/vim-matchit'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'greyblake/vim-preview'
NeoBundle 'vim-scripts/jsbeautify'
NeoBundle 'vim-scripts/The-NERD-Commenter'
NeoBundle 'godlygeek/tabular'
NeoBundle 'nvie/vim-togglemouse'
" successor of zencoding
NeoBundle 'mattn/emmet-vim'
"NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'vim-scripts/loremipsum'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'lucapette/vim-ruby-doc'
NeoBundle 'lucapette/vim-jquery-doc'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'wincent/Command-T'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'vim-scripts/sudo.vim'
NeoBundle 'vim-scripts/BufOnly.vim'
" statusline
NeoBundle 'bling/vim-airline'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'airblade/vim-gitgutter'

"--------------------------
" tool for explorer
"--------------------------
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite-outline'
"NeoBundle 'corntrace/bufexplorer'
"NeoBundle 'jeetsukumaran/vim-buffergator'
NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'kien/ctrlp.vim'
NeoBundle 'vim-scripts/ctags.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'mileszs/ack.vim'

"--------------------------
" filetype syntax highlight
"--------------------------
NeoBundle 'groenewege/vim-less'
NeoBundle 'kchmck/vim-coffee-script'
" use builtin markdown support (vim 7.3)
"NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'depuracao/vim-rdoc'
NeoBundle 'tpope/vim-haml'
"NeoBundle 'mamut/vim-css-hex'
NeoBundle 'skammer/vim-css-color'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'vim-scripts/AnsiEsc.vim'

"--------------------------
" color scheme
"--------------------------
NeoBundle 'rickharris/vim-blackboard'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'endel/vim-github-colorscheme'
NeoBundle 'rickharris/vim-monokai'

"--------------------------
" snipmate
"--------------------------
"NeoBundle 'garbas/vim-snipmate' "replaced with neoshippet
"NeoBundle 'tomtom/tlib_vim'
"NeoBundle 'MarcWeber/vim-addon-mw-utils'
"NeoBundle 'honza/vim-snippets'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'wongyouth/vim-snippets'

"-------------------------"
" Vimim for chinese input
"-------------------------"
NeoBundle 'vimim/vimim'

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck
