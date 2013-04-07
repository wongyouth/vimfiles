A handful of plugins for vim all maintained in one bundles.vim file, useful vim configuration, espacially for Rails coding. All plugins are mantained by vundle, so you can get plugins updated in one command that makes life easier.

Make sure you have `exuberant-ctags` installed for using vim-ctags.

    sudo apt-get install exuberant-ctags

## One Line Installation:

    bash <(curl -s https://raw.github.com/wongyouth/vimfiles/master/install.sh)

## Old School Installation:

    # Checkout configuration files
    git clone git://github.com/wongyouth/vimfiles ~/vimfiles

    # Create symlinks
    ln -s ~/vimfiles ~/.vim
    echo "source ~/.vim/vimrc" > ~/.vimrc
    echo "source ~/.vim/gvimrc" > ~/.gvimrc

    # Switch to the `~/.vim` directory, and fetch submodules
    cd ~/.vim
    git submodule init
    git submodule update

    # install bundles
    Launch vim, run :BundleInstall (or vim +BundleInstall +qall for CLI lovers)

## Features

* rails.vim included
* snipmate support included
* Ctrl-P TextMate like file exploring
* NERDTree
* NERDCommenter
* git intergrated
* zencoding
* ctags
* tagbar
* coffe-script syntax
* handlebars syntax
* haml syntax
* css, scss, sass syntax
* highlights hex codes in css files with colors they present, only work in gvim
* many other good stuff, see vim-plugins list below
* cursorline highlight & cursorcolumn hightlight
* ruby syntax check
* Browse Ruby Spec Rails API doc quickly with Vim
* Browse jQuery API doc quickly with Vim
* Ack: an lternative for `grep` way pattern search, Ubuntu user should run `sudo apt-get install ack-grep`.

## Usage

### update vim plugins

* `:BundleInstall!`  - update vim plugins

### File explorer

* `<F3>`             - use word under cursor as pattern to find all matching in the current file
* `<C-F3>`           - use word under cursor as pattern to replace all matching in the current file
* `<F4>`             - line number showing toggle (normal mode)
* `<F5>`             - undo history toggle
* `<F6>`             - open current file's folder in NERDtree
* `<F7>`             - toggle NERDTree window
* `<F8>`             - toggle tagbar window
* `<F11>`            - exeucte `:only` to make current window maximized
* `<c-k>`            - show buffer list
* `<c-p>`            - features like Ctrl-p in textMate
* `:Ggrep <pattern>` - for searching pattern in all files under git managed, `]q` open next matching, `[q` open previous matching, `[Q`, `]Q` for the first and last matching

### doc explorer

* RB - for ruby method api
* RS - for rspec method api
* RR - for rails method api
* JJ - for Jquery method api

### ruby syntax check

* :w !ruby -c
* syntax check once ruby file saved
* :Error - open prefix window for syntax error

### Formatting

* `<F4>`  - toggle paste mode (insert mode)
* `<F5>`  - toggle Gundo window (history window)
* `<F12>` - toggle mouse (for terminal vim)

* `\cc`       - comment out
* `\c<SPACE>` - reverting comment out

* `\ff` - javascript formatting

* `\a=`  - spilt and align line code by `=`
* `\a>`  - spilt and align line code by `=>`
* `\a==` - spilt and align line code by `==`
* `\a|`  - spilt and align line code by `|`
* `:Tab /pattern` for others, see `:h Tabular`

* `<c-y>,` - zencoding
* `<c-e>`  - sparkup

* `yss-`  - for <% wor*d -%>
* `yss=`  - for <%= wor*d %>
* `ysiw"` - for wrap a word with `"wor*d"`, more `:h surround`

* `crs` (`snake_case`) - `fooBar`  -> `foo_bar`
* `crm` (`MixedCase`)  - `foo_bar` -> `FooBar`
* `crc` (`camelCase`)  - `foo_bar` -> `fooBar`
* `cru` (`UPPER_CASE`) - `foo_bar` -> `FOO_BAR`, more on `:h cr`

* `\P` - preview markdown, textile text turns to html output in browser, need `ruby` built in Vim, `bluecloth`, `RedCloth` and other gems installed in system environemnt (not in rvm or rbenv env) for support converting. more `:h preview`

## Vim plugins included in the submodules

* [*vundle*](https://github.com/gmarik/vundle) Vundle, the plug-in manager for Vim

## Vim plugins included in bundles

### Plugins from [tpope](http://github.com/tpope)
* [*fugitive*](https://github.com/tpope/vim-fugitive) a Git wrapper so awesome, it should be illegal

* [*rails*](https://github.com/tpope/vim-rails) Ruby on Rails power tools, offers wonderful features for Ruby on Rails application development.

* [*unimpaired.vim*](https://github.com/tpope/vim-unimpaired) pairs of handy bracket mappings

* [*surround*](https://github.com/tpope/vim-surround) quoting/parenthesizing made simple

* [*abolish*](https://github.com/tpope/vim-abolish) easily search for, substitute, and abbreviate multiple variants of a word

* [*speeddating*](https://github.com/tpope/vim-speeddating) use CTRL-A/CTRL-X to increment dates, times, and more

* [*repeat*](https://github.com/tpope/vim-repeat) enable repeating supported plugin maps with "."


### Utility

* [*matchit*](https://github.com/edsono/vim-matchit) extended % matching for HTML, LaTeX, and many other languages

* [*delimitMate*](https://github.com/Raimondi/delimitMate) provides insert mode auto-completion for quotes, parens, brackets, etc.

* [*togglemouse*](https://github.com/nvie/vim-togglemouse) Toggles the mouse focus between Vim and your terminal emulator, allowing terminal emulator mouse commands, like copy/paste.

* [*The-NERD-Commenter*](https://github.com/vim-scripts/The-NERD-Commenter) A plugin that allows for easy commenting of code for many filetypes.

* [*tabular*](https://github.com/godlygeek/tabular) Vim script for text filtering and alignment

* [*zencoding*](https://github.com/mattn/zencoding-vim) vim script support for expanding abbreviation like zen-coding.

* [*sparkup*](https://github.com/rstacruz/sparkup) A parser for a condensed HTML format

* [*jsbeautify*](https://github.com/vim-scripts/jsbeautify) a javascript source code formatter. <leader>ff

* [*preview*](https://github.com/greyblake/vim-preview) previewing markup files(markdown,rdoc,textile,html)

* [*rename*](https://github.com/wojtekmach/vim-rename) Rename a buffer within Vim and on disk. :Rename[!] newname

* [*loremipsum*](htpps://github.com/vim-scripts/loremipsum) A dummy text generator. :Loremipsum[!] [WORDCOUNT] [PARAGRAPH_TEMPLATE] [PREFIX POSTFIX]

* [*vim*-easymotion](https://github.com/Lokaltog/vim-easymotion) Vim motions on speed!

* [*BufOnly*](https://github.com/vim-scripts/BufOnly.vim) Delete all the buffers except the current/named buffer

* [*vim-ruby*](https://github.com/vim-ruby/vim-ruby) Vim/Ruby Configuration Files

* [*vim-ruby-doc*](https://github.com/lucapette/vim-ruby-doc) Browse Ruby RSpec and Rails API docs quickly with Vim

* [*vim-jquery-doc*](https://github.com/lucapette/vim-jquery-doc) Browse jQuery API doc quickly with Vim

* [*syntastic*](https://github.com/scrooloose/syntastic) Syntax checking hacks for vim

* [*gundo*](https://github.com/sjl/gundo.vim) Vim plugin to visualize your Vim undo tree

* [*Ack*](https://github.com/mileszs/ack.vim) Vim plugin for the Perl module / CLI script 'ack'

### File explorer

* [*tagbar*](https://github.com/majutsushi/tagbar) Vim plugin that displays tags in a window, ordered by class etc.

* [*ctags.vim*](https://github.com/vim-scripts/ctags.vim) Display function name in the title bar.

* [*nerdtree*](https://github.com/scrooloose/nerdtree.git) A tree explorer plugin for vim

* [*bufexplorer*](https://github.com/corntrace/bufexplorer) With bufexplorer, you can quickly and easily switch between buffers

* [*ctrlp*](https://github.com/kien/ctrlp.vim) Fuzzy file, buffer, mru and tag finder


### Filetype syntax highlight

* [*less*](https://github.com/groenewege/vim-less) vim syntax for LESS (dynamic CSS)

* [*vim-rdoc*](https://github.com/depuracao/vim-rdoc) Rdoc Vim Mode

* [*coffee-script*](https://github.com/kchmck/vim-coffee-script) CoffeeScript support for vim

* [*vim-css-hex*](https://github.com/mamut/vim-css-hex) Highlights hex codes in css files with colors they represent

* [*vim-handlebars*](https://github.com/nono/vim-handlebars) Vim plugin for Handlebars

* [*vim-slim*](https://github.com/slim-template/vim-slim) A clone of the slim vim plugin from stonean. For use with Pathogen.

### Code Snippets

* [*snipmate*](https://github.com/garbas/vim-snipmate) snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim

* [*vim-snippets*](https://github.com/honza/vim-snippets) vim-snipmate default snippets

* [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils) vim: interpret a file by function and cache file automatically. snipmate needs it.

* [tlib](https://github.com/tomtom/tlib_vim) Some utility functions for VIM. snipmate needs it.

### Color scheme

* [*blackboard*](https://github.com/rickharris/vim-blackboard) Textmate's Blackboard theme for vim (with iTerm2 theme)

* [*solarized*](https://github.com/altercation/vim-colors-solarized) precision colorscheme for the vim text editor

* [*vim-github-colorscheme*](https://github.com/endel/vim-github-colorscheme) A vim colorscheme based on Github's syntax highlighting. Created by Anthony Carapetis
* [*monokai*](https://github.com/rickharris/vim-monokai) Monokai for vim.

## Screenshots

* vim-gui

  <img src='http://pic.yupoo.com/sinaweibo1332356097/C5k2LdP9/Ap3ld.png' width='800' height='600' alt="vim-gui" />

* vim-gui (with dropdown menu for snippets)

  <img src="http://pic.yupoo.com/sinaweibo1332356097/C5CzkQbO/828LY.png" width='800' height='600' alt="vim-gui-snippets" />

* vim-terminal

  <img src='http://pic.yupoo.com/sinaweibo1332356097/C5k2KSe7/26ZeB.png' width='800' height='600' alt="vim-terminal" />

