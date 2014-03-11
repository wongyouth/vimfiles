if !exists('g:loaded_neosnippet')
  finish
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

"let g:neosnippet#enable_word_expand = 1

" Tell Neosnippet the path of snippets
"let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
let g:neosnippet#snippets_directory='~/.vim/bundle/wongyouth-vim-snippets/snippets'

" Plugin key-mappings.
imap <C-i>     <Plug>(neosnippet_expand_or_jump)
smap <C-i>     <Plug>(neosnippet_expand_or_jump)
xmap <C-i>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

au BufRead,BufNewFile *.html.erb set ft=eruby.html

" delete markers when InsertLeave event
"autocmd InsertLeave * NeoSnippetClearMarkers
