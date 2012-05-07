" enable bundle
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

"let g:ruby_path = "C:\Ruby192\bin"

" --------------------
" colorscheme
" --------------------
color desert
"color blackboard
"color solarized

" do trick for show solarized correct
set background=
set background=dark

"comment out to be able to copy from vim to system clipboard
"set mouse=a

set fencs=utf-8,cp936,sjis
"set enc=utf-8

"\u25b8 ▸, \u00ac ¬
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<cr>
set list
set laststatus=2
set statusline=%<%f\ %h%m%r%=[TYPE=%Y]\ [FORMAT=%{&ff}]\ [ENC=%{&enc}]\ [FENC=%{&fenc}]\ %-14.(%l,%c%V%)\ %P
set pastetoggle=<F4>

" nontext color
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59

" highline current line & column
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

set ts=2 sts=2 sw=2 et
set number

"quick load vimrc
map <leader>v :tabedit $MYVIMRC<cr>
map <leader>e :tabedit $HOME/vimfiles/vimrc<cr>

"rerun vimrc after save it
if has("autocmd")
  " enbale file type detection
  filetype plugin indent on
  syntax on

  " set rxls filetype to ruby
  autocmd bufnewfile,bufread *.rxls set filetype=ruby

  " set thor filetype to ruby
  autocmd bufnewfile,bufread *.thor set filetype=ruby

  " --------------------------
  " disabled for really slow after a few changes saved
  " reload vimrc when changed
  "autocmd bufwritepost _vimrc source $MYVIMRC
  "autocmd bufwritepost vimrc source $MYVIMRC
endif

" I dont know why exists() not work, fix me if you know it.
"if exists(":Tabularize")
  nmap <leader>a# :Tabularize /#<cr>
  vmap <leader>a# :Tabularize /#<cr>
  nmap <leader>a= :Tabularize /=<cr>
  vmap <leader>a= :Tabularize /=<cr>
  nmap <leader>a: :Tabularize /:\zs<cr>
  vmap <leader>a: :Tabularize /:\zs<cr>
  nmap <leader>a> :Tabularize /=><cr>
  vmap <leader>a> :Tabularize /=><cr>
"endif

"tab navigation
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

" NERDTree插件的快捷键
"if exists(":NERDTreeToggle")
  imap <silent> <F7> <esc>:NERDTreeToggle<CR>
  nmap <silent> <F7> :NERDTreeToggle<CR>
"endif

" BufExplorer 快捷键
"if exists(":BufExplorer")
  imap <silent> <C-b> <esc>:BufExplorer<CR>
  nmap <silent> <C-b> :BufExplorer<CR>
"endif

" taglist
let Tlist_Use_Right_Window   = 1
nnoremap <silent> <F8> :TlistToggle<CR>

" toggle for copy & paste
nnoremap <silent> <F4> :set nu!<CR>:set list!<CR>

" 窗口区域切换,Ctrl+↑↓←→ 来切换
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
