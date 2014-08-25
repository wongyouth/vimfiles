A handful of plugins for vim all maintained in one bundles.vim file, useful vim configuration, espacially for Rails coding. All plugins are mantained by NeoBundle, so you can get plugins updated in one command that makes life easier.

Make sure you have `exuberant-ctags` installed for using vim-ctags if you use Ubuntu.
Vim plugin to list, select and switch between buffers.
    sudo apt-get install exuberant-ctags

or if you use Mac

    brew install ctags

## Break Notice

In order to load large project faster in `<C-P>`, the`Fuzzy Finder` mode,
the new version started to use [Unite](https://github.com/Shougo/unite.vim) which loads
files asynchronously and not cause VIM freezing.
To support that I switched from `vundle` to `neobundle`,
If you use this repo from old version, you need run code below and restart VIM to upgrade.

    git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

## One Line Installation:

    bash <(wget -O- https://raw.github.com/wongyouth/vimfiles/master/install.sh)

## Old School Installation:

    # Checkout configuration files
    git clone git://github.com/wongyouth/vimfiles ~/vimfiles

    # Create symlinks
    ln -s ~/vimfiles ~/.vim
    echo "source ~/.vim/vimrc" > ~/.vimrc
    echo "source ~/.vim/gvimrc" > ~/.gvimrc

    # Switch to the `~/.vim` directory, and install NeoBundle
    cd ~/.vim
    mkdir -p ~/.vim/bundle
    git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

    # install bundles
    Launch vim, you will be prompted to install bundles.

## Base Customization

* Line number
* Soft 2-space tabs, and default hard tabs to 2 spaces
* Show trailing whitespace in color red
* Allow backspacing over everything (indentations, eol, and start characters) in insert mode
* Always show statusline
* `<leader>u` converts the entire word to uppercace
* `<leader>l` converts the entire word to lowercase
* `<leader>U` converts the first char of a word to uppercase
* `<leader>L` converts the first char of a word to lowercase

I want to remind that <Leader> in most cases is "\" key.

If ~/.vimrc.after exists it will be loaded at the very ending, you can write your own customization there.
You may have a look at the sample in the [vimrc.after](vimrc.after).

## Features

* rails.vim included
* Snippets support included
* Ctrl-P TextMate like file exploring
* [Unite](https://github.com/Shougo/unite.vim) integrated, loading files asynchronously make loading faster in large project.
* NERDCommenter
* tcomment_vim
* Git integrated
* Emmet (formerly Zen Coding)
* Ctags
* Tagbar
* Coffee-script syntax
* Handlebars syntax
* Haml syntax
* Slim syntax
* css, scss, sass syntax
* Highlights hex codes in css files with colors they present (only work in Vim GUI)
* Cursorline highlight & cursorcolumn hightlight
* Browse Ruby Spec Rails API doc quickly with Vim
* Browse jQuery API doc quickly with Vim
* Ack: an lternative for `grep` way pattern search, Ubuntu user should run `sudo apt-get install ack-grep`.
* html,css,js formatting with js-beautify. You need to install [js-beautify](https://github.com/einars/js-beautify).

Many other good stuff, see vim-plugins list below

## Usage

### update vim plugins

* `:NeoBundleUpdate!`  - update vim plugins

### File explorer

* `<F3>`             - use word under cursor as pattern to find all matching in the current file
* `<C-F3>`           - use word under cursor as pattern to replace all matching in the current file, `<M-F3>` for Mac
* `<F4>`             - toggle line number in normal mode, toggle paste mode in insert mode
* `<F5>`             - toggle undo history
* `<F6>`             - open current buffer's folder in NERDtree
* `<F7>`             - toggle NERDTree window
* `<F8>`             - toggle tagbar window
* `<F11>`            - exeucte `:only` to make current window maximized
* `<C-k>`            - show buffer list
* `<C-p>`            - fuzzy matching, features like Ctrl-p in textMate, from source files, buffer, mru
* `:Ggrep <pattern>` - for searching pattern in all files under git managed, `]q` open next matching, `[q` open previous matching, `[Q`, `]Q` for the first and last matching
* `:Ack <pattern> <directory>` - for searching pattern in all files under a directory
* `<leader>ub`       - Show buffer list
* `<leader>uf`       - Show file list under current directory
* `<leader>ufr`      - Show file list under current directory and subdirectories, loading asynchronously.
* `<leader>ufm`      - Show file MRU list
* `<leader>ubf`      - Fuzzy matching files under current buffer directory
* `<leader>uo`       - Show current buffer's outline
* `<leader>un`       - Rotate to next source
* `<leader>up`       - Rotate to previous source

### API document explorering

* `RB` - go to Ruby api page with current word under cursor
* `RS` - go to Rspec api page with current word under cursor
* `RR` - go to Rails api page with current word under cursor
* `JJ` - go to jQuery api page with current word under cursor

### Work with sudo

* run `vim sudo:/etc/hosts`, otherwise a warning will show about `unite` is disabled.

### ruby syntax check

* syntax check once ruby file saved
* :Error - open prefix window for syntax error

### Formatting

* `<F4>`  - toggle paste mode (insert mode)
* `<F5>`  - toggle Gundo window (history window)
* `<F12>` - toggle mouse (for terminal vim)

* gcc   - Toggle comment for the current line

* `\ff` - javascript formatting
* `{visual}=` - css,js,html formatting if have js-beautify installed.

* `\a=`  - spilt and align line code by `=`
* `\a>`  - spilt and align line code by `=>`
* `\a==` - spilt and align line code by `==`
* `\a|`  - spilt and align line code by `|`
* `:Tab /{pattern}` for others, see `:h Tabular`

* `<c-y>,` - [Emmet](https://github.com/emmetio/emmet) (formerly Zen Coding)
* `<c-e>`  - sparkup

* `ysiw"` - Wrap a word with double quotation, `wor*d` => `"wor*d"`, more `:h surround`
* `yss-`  - `wor*d` => `<% wor*d -%>`
* `yss=`  - `wor*d` => `<%= wor*d %>`

* `crs` (`snake_case`) - `fooBar`  -> `foo_bar`
* `crm` (`MixedCase`)  - `foo_bar` -> `FooBar`
* `crc` (`camelCase`)  - `foo_bar` -> `fooBar`
* `cru` (`UPPER_CASE`) - `foo_bar` -> `FOO_BAR`, more on `:h cr`

* `\P` - preview markdown, textile text turns to html output in browser, need `ruby` built in Vim, `redcarpet` gems installed in system environemnt (not in rvm or rbenv env) for support converting. more `:h preview`

## Vim plugins included in bundles

### Plugins from [tpope](http://github.com/tpope)
* [fugitive](https://github.com/tpope/vim-fugitive) a Git wrapper so awesome, it should be illegal

* [rails](https://github.com/tpope/vim-rails) Ruby on Rails power tools, offers wonderful features for Ruby on Rails application development.

* [unimpaired.vim](https://github.com/tpope/vim-unimpaired) pairs of handy bracket mappings

* [surround](https://github.com/tpope/vim-surround) quoting/parenthesizing made simple

* [abolish](https://github.com/tpope/vim-abolish) easily search for, substitute, and abbreviate multiple variants of a word

* [speeddating](https://github.com/tpope/vim-speeddating) use CTRL-A/CTRL-X to increment dates, times, and more

* [repeat](https://github.com/tpope/vim-repeat) enable repeating supported plugin maps with "."

* [vim-haml](https://github.com/tpope/vim-haml) Vim runtime files for Haml, Sass, and SCSS

### Utility

* [matchit](https://github.com/edsono/vim-matchit) extended % matching for HTML, LaTeX, and many other languages

* [delimitMate](https://github.com/Raimondi/delimitMate) provides insert mode auto-completion for quotes, parens, brackets, etc.

* [togglemouse](https://github.com/nvie/vim-togglemouse) Toggles the mouse focus between Vim and your terminal emulator, allowing terminal emulator mouse commands, like copy/paste.

* <del datetime="2014-06-14T00:47:39 +0800">[The-NERD-Commenter](https://github.com/vim-scripts/The-NERD-Commenter) A plugin that allows for easy commenting of code for many filetypes.</del>

* [tcomment_vim](https://github.com/tomtom/tcomment_vim) An extensible & universal comment vim-plugin that also handles embedded filetypes

* [tabular](https://github.com/godlygeek/tabular) Vim script for text filtering and alignment

* [emmet](https://github.com/mattn/emmet-vim) emmet for vim: http://emmet.io/

* [jsbeautify](https://github.com/vim-scripts/jsbeautify) a javascript source code formatter. <leader>ff

* [preview](https://github.com/greyblake/vim-preview) previewing markup files(markdown,rdoc,textile,html)

* [loremipsum](htpps://github.com/vim-scripts/loremipsum) A dummy text generator. :Loremipsum[!] [WORDCOUNT] [PARAGRAPH_TEMPLATE] [PREFIX POSTFIX]

* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion) Vim motions on speed!

* [BufOnly](https://github.com/vim-scripts/BufOnly.vim) Delete all the buffers except the current/named buffer

* [vim-ruby](https://github.com/vim-ruby/vim-ruby) Vim/Ruby Configuration Files

* [vim-ruby-doc](https://github.com/lucapette/vim-ruby-doc) Browse Ruby RSpec and Rails API docs quickly with Vim

* [vim-jquery-doc](https://github.com/lucapette/vim-jquery-doc) Browse jQuery API doc quickly with Vim

* [syntastic](https://github.com/scrooloose/syntastic) Syntax checking hacks for vim

* [gundo](https://github.com/sjl/gundo.vim) Vim plugin to visualize your Vim undo tree

* [Ack](https://github.com/mileszs/ack.vim) Vim plugin for the Perl module / CLI script 'ack'

* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) A Vim plugin for visually displaying indent levels in code

### Mac plugin

* [Dash.vim](https://github.com/rizzatti/dash.vim) Search Dash.app from Vim

## <del datetime="2013-11-14 12:59:48">Vim plugins included in the submodules</del>

* <del datetime="2013-11-14 12:59:48">[vundle](https://github.com/gmarik/vundle) Vundle, the plug-in manager for Vim</del>

* [vim-localrc](https://github.com/thinca/vim-localrc) Enable configuration file of each directory.

### File explorer

* [unite](http://github.com/Shougo/unite.vim) Unite and create user interfaces

* [unite-outline](http://github.com/Shougo/unite-outline) outline source for unite.vim

* [tagbar](https://github.com/majutsushi/tagbar) Vim plugin that displays tags in a window, ordered by class etc.</del>

* [ctags](https://github.com/vim-scripts/ctags.vim) Display function name in the title bar.

* [nerdtree](https://github.com/scrooloose/nerdtree.git) A tree explorer plugin for vim

* <del datetime="2013-05-22T22:29:52 +0800">[bufexplorer](https://github.com/corntrace/bufexplorer) With bufexplorer, you can quickly and easily switch between buffers</del>.

* <del datetime="2013-05-22T22:29:38 +0800">[buffergrator](https://github.com/jeetsukumaran/vim-buffergator) Vim plugin to list, select and switch between buffers</del>.

* <del datetime="2013-11-14 12:59:48">[ctrlp](https://github.com/kien/ctrlp.vim) Fuzzy file, buffer, mru and tag finder</del>

* [sudo.vim](http://github.com/vim-scripts/sudo.vim) Allows one to edit a file with prevledges from an unprivledged session.

* [vim-airline](http://github.com/bling/vim-airline) lean & mean statusline for vim that's light as air

### Filetype syntax highlight

* [less](https://github.com/groenewege/vim-less) vim syntax for LESS (dynamic CSS)

* [vim-rdoc](https://github.com/depuracao/vim-rdoc) Rdoc Vim Mode

* [coffee-script](https://github.com/kchmck/vim-coffee-script) CoffeeScript support for vim

* [vim-css-color](https://github.com/skammer/vim-css-color) Highlight colors in css files

* [vim-handlebars](https://github.com/nono/vim-handlebars) Vim plugin for Handlebars

* [vim-slim](https://github.com/slim-template/vim-slim) A clone of the slim vim plugin from stonean. For use with Pathogen.

* [AnsiEsc](https://github.com/vim-scripts/AnsiEsc.vim) ansi escape sequences concealed, but highlighted as specified (conceal)

* <del datetime="2014-07-03T16:11:59 +0800">[vim-emblem](https://github.com/heartsentwined/vim-emblem) emblem support to vim</del>

* [vim-jade](https://github.com/digitaltoad/vim-jade) Vim Jade template engine syntax highlighting and indention

### Code Snippets

* [neocomplcache.vim](http://github.com/Shougo/neocomplcache.vim) Ultimate auto-completion system for Vim.

* [neosnippet.vim](http://github.com/Shougo/neosnippet.vim) neo-snippet plugin contains neocomplcache snippets source

* [vim-snippets](https://github.com/wongyouth/vim-snippets) vim-snipmate default snippets

* <del datetime="2013-05-22T22:24:21 +0800">[snipmate](https://github.com/garbas/vim-snipmate) snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim</del>.

* <del datetime="2013-05-22T22:26:08 +0800">[vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils) vim: interpret a file by function and cache file automatically. snipmate needs it </del>.

* <del datetime="2013-05-22T22:26:17 +0800">[tlib](https://github.com/tomtom/tlib_vim) Some utility functions for VIM. snipmate needs it</del>.

### Color scheme

* [blackboard](https://github.com/rickharris/vim-blackboard) Textmate's Blackboard theme for vim (with iTerm2 theme)

* [solarized](https://github.com/altercation/vim-colors-solarized) precision colorscheme for the vim text editor

* [vim-github-colorscheme](https://github.com/endel/vim-github-colorscheme) A vim colorscheme based on Github's syntax highlighting. Created by Anthony Carapetis

* <del datetime="2014-05-13T16:31:27 +0800">[monokai](https://github.com/rickharris/vim-monokai) Monokai for vim.</del>
* [monokai](https://github.com/sickill/vim-monokai) Monokai for vim.

## Screenshots

* vim-gui

  <img src='http://pic.yupoo.com/sinaweibo1332356097/C5k2LdP9/Ap3ld.png' width='800' height='600' alt="vim-gui" />

* vim-gui (with dropdown menu for snippets)

  <img src="http://pic.yupoo.com/sinaweibo1332356097/C5CzkQbO/828LY.png" width='800' height='600' alt="vim-gui-snippets" />

* vim-terminal

  <img src='http://pic.yupoo.com/sinaweibo1332356097/C5k2KSe7/26ZeB.png' width='800' height='600' alt="vim-terminal" />

## Change log

[full change log](CHANGELOG.md)
