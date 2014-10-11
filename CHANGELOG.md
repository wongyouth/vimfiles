## Change log

[2014-10-11 17:57]

* add `seratch/vim-angular-coffee`
* add `matthewsimo/angular-vim-snippets`

[2014-08-25 14:36]

* add `rizzatti/dash.vim`

[2014-07-06 13:44]

* add `thinca/vim-localrc`

[2014-07-01 16:03]

* add `digitaltoad/vim-jade`
* disable relativenumber by default

[2014-06-14 00:41]

* add `bronson/vim-trailing-whitespace` plugin
* replace NerdCommenter with tcomment_vim

[2014-05-13 16:32]

* replace rickharris/vim-monokai with sickill/vim-monokai for better matching brackets highlighting

[2014-05-13 09:31]

* add equalprg to json to pretty format json
* add equalprg to ruby to pretty format ruby hash
* add more comment in vimrc
* `\W` to trim trailing spaces in file
* `\S` to trim leading spaces in file
* `\D` to blank line in file
* `\gp` to exec `git push`
* left arrow key can to back to the ending of previous line
* add Shougo/context_filetype to vimrc.after example file

[2014-03-12 11:24]

* update to latest neosnippet to enable `option word` by default.

[2014-03-11 19:23]

* add 'Shougo/vimshell.vim'
* update 'wongyouth-vim-snippets'
* add neocomplete config
* add vimrc.after for demo

[2014-03-10]

* recover `scrooloose/syntastic`, you could disable it by `NeoBundleDisable syntastic` in your `~/.vimrc.after` if you want.

[2014-02-28 24:06:01]

* Add back `honza/vim-snippets`. `wongyouth/vim-snippets` only including extra snippets.

[2014-02-28 24:06:01]

* Add back `NERDTree`
* disable `scrooloose/syntastic` since it cause saving file very slowly.
* Change README
* Add vim-emblem

[2013-11-14 13:10:07]

* Remove `Vundle` in favor of `NeoBundle` which can build `vimproc` automatically.
* Remove `NERDTree` in favor of Unite-file
* Remove `Ctrlp` in favor of Unite-file_rec/asyc
* Remove `BufExplorer` in favor of Unite-buffer
* Add `vimproc` for Unite-file_rec/async

[2013-10-23]

add mvimrc file for MacVim configuration
use monokai colorscheme for gui by default.

[2013-10-12]

add equalprg setting in vimrc for css,js,html formatting supported by external tool js-beautify.

[2013-10-09]

vim-css-hex does not show hex color in css file correctly and seems not being under development since 2 years ago, I decided to switch to vim-css-color.

* add vim-haml
* add vim-css-color
* delete vim-css-hex

[2013-09-13]

* add AnsiEsc

[2013-09-12]

* use emmet instead of zencoding
* add vim-indent-guides

[2013-07-10]

* add vim-airline

[2013-05-22]

* add unite, unite-outline vim
* add neocomplcache.vim
* replace vim-snipmate with neosnippet.vim
* replace bufexplorer, buffergator with unite
* remove rename.vim, use NERDTree
* use forked wongyouth/vim-snippets
* add sudo.vim

[2013-05-09]

* add ruby filetype to support .god
* set clipboard=unnamed in mac
* use <C-]> instead of g<C-]>

[2013-04-07]

* add `CHANGELOG` file
* change `honza/snipmate-snippets` to `honza/vim-snippets`

[2013-02-02]

* add a new filetype: vim-slim

[2013-01-29]

* add ack.vim
* add vim-handlebars
* support macvim for tab navigation with 'Command-[0-9]'

