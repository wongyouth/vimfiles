"set guifont
set guifont=Monospace\ 11

"colorscheme: blackboard github solarized
"color solarized
"color github

"set background=dark | light
"set background=light

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
noremap <c-tab> gt
noremap <c-s-tab> gT
"---------------------------------------------------
" DOES NOT WORK on ubuntu gnome-termial
" alt-[0-9] is shortcuts for terminal tab switching
"---------------------------------------------------
noremap <a-1> 1gt
noremap <a-2> 2gt
noremap <a-3> 3gt
noremap <a-4> 4gt
noremap <a-5> 5gt
noremap <a-6> 6gt
noremap <a-7> 7gt
noremap <a-8> 8gt
noremap <a-9> 9gt
noremap <a-0> :tablast<cr>

