set nocompatible               " be iMproved
filetype off                   " required!

"--------------------
" enable vundle
"--------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"--------------------
" include bundles
"--------------------
source ~/.vim/bundle.vim

"------------------------------
" for windows vim with ruby1.9
"------------------------------
"let g:ruby_path = "C:\Ruby192\bin"

"----------------------------
" enbale file type detection
"----------------------------
filetype plugin indent on
syntax on

"--------------------
" colorscheme
"--------------------
color desert
"color blackboard

" do trick for show solarized correct
"color solarized
"set background=
"set background=dark

"--------------------
" encoding
"--------------------
set fencs=utf-8,cp936,sjis
"set enc=utf-8

"--------------------
" normal setting
"--------------------
set number
set autoindent
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" This means that you can have unwritten changes to a file and open a new file
" using :e, without being forced to write or undo your changes first. 
set hidden

"-----------------------
" status line setting
"-----------------------
set laststatus=2
set statusline=%<%f\ %h%m%r%=[TYPE=%Y]\ [FORMAT=%{&ff}]\ [ENC=%{&enc}]\ [FENC=%{&fenc}]\ %-14.(%l,%c%V%)\ %P

"--------------------------------
" invisible character setting
"--------------------------------
"unicode for \u25b8 for `▸', \u00ac for `¬'
set listchars=tab:▸\ ,eol:¬
set list
" map toggle, or use F4
nmap <leader>l :set list!<cr>

"----------------------------
" Invisible character colors
"----------------------------
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

"--------------------------------------------------------
" highline current line & column
" DOES NOT WORK with colorscheme solarized and blackboard
"--------------------------------------------------------
set cursorline
highlight cursorline term=underline cterm=underline guibg=Grey40
set cursorcolumn
if has("autocmd")
  " current line
  au WinLeave * set nocursorline
  au WinEnter * set cursorline
  " current column
  au WinLeave * set nocursorcolumn
  au WinEnter * set cursorcolumn
endif

"------------------------
" for quick load vimrc
"------------------------
map <leader>v :tabedit $MYVIMRC<cr>
map <leader>e :tabedit $HOME/vimfiles/vimrc<cr>

" filetype detection
if has("autocmd")
  " set rxls filetype to ruby
  autocmd bufnewfile,bufread *.rxls set filetype=ruby

  " set thor filetype to ruby
  autocmd bufnewfile,bufread *.thor set filetype=ruby
endif

"---------------------------------------------------
" disabled for becoming really slow when reload vimrc
" after a few changes saved
"---------------------------------------------------
"rerun vimrc after save it
"if has("autocmd")
  "autocmd bufwritepost _vimrc source $MYVIMRC
  "autocmd bufwritepost vimrc source $MYVIMRC
"endif

"-----------------------
" Shortcut keys mappings
"-----------------------
" F4 toggle for paste, Insert Mode
set pastetoggle=<F4>
" toggle for copy & paste, Normal Mode
nnoremap <silent> <F4> :set nu!<CR>:set list!<CR>
" toggle mouse with F12, for selection be copied to system clipboard
set mouse=a

"===============================
" config for plugins
"===============================

"-------------------------
" tabular shortcut
"-------------------------
if exists("g:tabular_loaded")
  nmap <leader>a# :Tabularize /#<cr>
  vmap <leader>a# :Tabularize /#<cr>
  nmap <leader>a= :Tabularize /=<cr>
  vmap <leader>a= :Tabularize /=<cr>
  nmap <leader>a: :Tabularize /:\zs<cr>
  vmap <leader>a: :Tabularize /:\zs<cr>
  nmap <leader>a> :Tabularize /=><cr>
  vmap <leader>a> :Tabularize /=><cr>
endif

"---------------------
" NERDTree shortcut
"---------------------
if exists("loaded_nerd_tree")
  imap <silent> <F7> <esc>:NERDTreeToggle<CR>
  nmap <silent> <F7> :NERDTreeToggle<CR>
endif

"---------------------
" taglist shortcut
"---------------------
if exists('loaded_taglist')
  let Tlist_Use_Right_Window   = 1
  nnoremap <silent> <F8> :TlistToggle<CR>
endif

"---------------------
" BufExplorer shortcut
"---------------------
if exists("g:bufexplorer_version")
  imap <silent> <C-b> <esc>:BufExplorer<CR>
  nmap <silent> <C-b> :BufExplorer<CR>
endif

"-------------------------------
" Windows switch with Ctrl+↑↓←→ 
"-------------------------------
imap <silent> <C-left> <esc><C-W><left>
vmap <silent> <C-left> <esc><C-W><left>
nmap <silent> <C-left> <C-W><left>
imap <silent> <C-right> <esc><C-W><right>
vmap <silent> <C-right> <esc><C-W><right>
nmap <silent> <C-right> <C-W><right>
imap <silent> <C-up> <esc><C-W><up>
vmap <silent> <C-up> <esc><C-W><up>
nmap <silent> <C-up> <C-W><up>
imap <silent> <C-down> <esc><C-W><down>
vmap <silent> <C-down> <esc><C-W><down>
nmap <silent> <C-down> <C-W><down>

"------------------------------
"tab navigation
" DOES NOT WORK on ubuntu box
"------------------------------
"map <c-tab> gt
"map <c-s-tab> gT
"map <a-1> 1gt
"map <a-2> 2gt
"map <a-3> 3gt
"map <a-4> 4gt
"map <a-5> 5gt
"map <a-6> 6gt
"map <a-7> 7gt
"map <a-8> 8gt
"map <a-9> 9gt
"map <a-0> :tablast<cr>

" ref: https://github.com/huacnlee/vimmate/blob/master/.gvimrc

