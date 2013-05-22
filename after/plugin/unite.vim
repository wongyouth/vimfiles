if !exists('g:loaded_unite')
  finish
endif

imap <leader>t <ESC>:Unite file<CR>
nmap <leader>t <ESC>:Unite file<CR>
vmap <leader>t <ESC>:Unite file<CR>

if !exists('g:loaded_nerd_tree')
  imap <F6> <ESC>:UniteWithBufferDir file<CR>
  nmap <F6> <ESC>:UniteWithBufferDir file<CR>
  vmap <F6> <ESC>:UniteWithBufferDir file<CR>

  imap <F7> <ESC>:Unite file<CR>
  nmap <F7> <ESC>:Unite file<CR>
  vmap <F7> <ESC>:Unite file<CR>
endif

if !exists('g:tagbar_width')
  imap <F8> <ESC>:Unite outline<CR>
  nmap <F8> <ESC>:Unite outline<CR>
  vmap <F8> <ESC>:Unite outline<CR>
endif

if !exists('g:did_buffergator')
  imap <leader>b <ESC>:Unite buffer<CR>
  nmap <leader>b <ESC>:Unite buffer<CR>
  vmap <leader>b <ESC>:Unite buffer<CR>
endif

if !exists('g:bufexplorer_version')
  imap <C-k> <ESC>:Unite buffer<CR>
  nmap <C-k> <ESC>:Unite buffer<CR>
  vmap <C-k> <ESC>:Unite buffer<CR>
endif
