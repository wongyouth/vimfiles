" bundle enabled
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

"let g:ruby_path = "C:\Ruby192\bin"

color desert

set fencs=utf-8,cp936,sjis
"set enc=utf-8

"\u25b8 ▸, \u00ac ¬
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<cr>
set list

" nontext color
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

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

  " reload vimrc when changed
  autocmd bufwritepost _vimrc source $MYVIMRC
  autocmd bufwritepost vimrc source $MYVIMRC
endif

if exists(":Tabularize")
  nmap <leader>a= :Tabularize /=<cr>
  vmap <leader>a= :Tabularize /=<cr>
  nmap <leader>a: :Tabularize /:\zs<cr>
  vmap <leader>a: :Tabularize /:\zs<cr>
  nmap <leader>a> :Tabularize /=><cr>
  vmap <leader>a> :Tabularize /=><cr>
endif

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
imap <silent> <F7> <esc>:NERDTreeToggle<CR>
nmap <silent> <F7> :NERDTreeToggle<CR>
" BufExplorer 快捷键 {{{
imap <silent> <C-b> <esc>:BufExplorer<CR>
nmap <silent> <C-b> :BufExplorer<CR>
" }}}


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

