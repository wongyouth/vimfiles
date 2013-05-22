if !exists('g:tagbar_width')
    finish
endif

let g:tagbar_autofocus=1
nmap <F8> :TagbarToggle<CR>
