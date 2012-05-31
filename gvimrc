set guifont=Monospace\ 11

"color blackboard github solarized
color github

"----------------------------
" Invisible character colors
"----------------------------
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59

"-----------------------------------------------------
" tab navigation
"
" terminals doesn't see difference
" between <tab> and <c-tab>
"------------------------------------------------------
map <c-tab> gt
map <c-s-tab> gT
"---------------------------------------------------
" DOES NOT WORK on ubuntu gnome-termial
" alt-[0-9] is shortcuts for terminal tab switching
"---------------------------------------------------
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

" ref: https://github.com/huacnlee/vimmate/blob/master/.gvimrc


