" javascript_jquery-doc.vim - Mapping for jquery-doc
" Author:       Luca Pette <lucapette@gmail.com>
" Version:      0.2

if !exists('g:jquery_doc_mapping')
    let g:jquery_doc_mapping='JJ'
endif

execute "noremap <buffer><silent> ".g:jquery_doc_mapping." :call jquerydoc#search(expand('<cword>'))<CR>"
