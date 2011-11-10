"let g:ruby_path = "C:\Ruby192\bin"

color desert

set fencs=utf-8,cp936,sjis
"set enc=utf-8

filetype plugin indent on
syntax on
set ts=2 sts=2 sw=2 et

"quick load vimrc
map <leader>v :tabedit $MYVIMRC<cr>
map <leader>e :tabedit $HOME/vimfiles/vimrc<cr>

"rerun vimrc after save it
if has("autocmd")
    autocmd bufwritepost _vimrc source $MYVIMRC
    autocmd bufwritepost vimrc source $MYVIMRC
endif


"tab navigation
map <c-tab> gt
map <c-s-tab> gT
map <a-1> 1gt
map <a-2> 2gt
map <a-3> 3gt
map <a-4> 4gt
map <a-5> 5gt
map <a-6> 6gt
map <a-7> 7gt
map <a-8> 8gt
map <a-9> 9gt
map <a-0> :tablast<cr>

