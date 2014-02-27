if !exists('g:loaded_unite')
  finish
endif


if !exists('g:loaded_nerd_tree')
  nnoremap <F6> :<C-u>UniteWithBufferDir file_rec/async<CR><C-u>
  nnoremap <F7> :<C-u>Unite file_rec/async<CR>
endif

if !exists('g:loaded_ctrlp')
  nnoremap <C-p> :<C-u>Unite file_rec/async buffer file_mru<CR>
endif

if !exists('g:tagbar_width')
  nnoremap <F8> :<C-u>Unite outline<CR>
endif

if !exists('g:bufexplorer_version')
  nnoremap <C-k> :<C-u>Unite buffer<CR>
endif

call unite#filters#matcher_default#use(['matcher_fuzzy'])
"call unite#custom#source('file,file/new,buffer,file_rec', 'matchers', 'matcher_fuzzy')

nnoremap <silent> <leader>b :<C-u>UniteWithBufferDir -buffer-name=files file<CR><C-u>
nnoremap <silent> <leader>d :<C-u>UniteWithBufferDir -buffer-name=files file_rec/async<CR><C-u>
nnoremap <silent> <leader>f :<C-u>Unite file<CR>
nnoremap <silent> <leader>g :<C-u>Unite grep:.<CR>
nnoremap <silent> <leader>m :<C-u>Unite file_mru<CR>
nnoremap <silent> <leader>ma :<C-u>Unite mapping<CR>
nnoremap <silent> <leader>me :<C-u>Unite output:message<CR>
nnoremap <silent> <leader>r :<C-u>Unite -buffer-name=resume resume<CR>
nnoremap <silent> <leader>re :<C-u>Unite register<CR>
nnoremap <silent> <leader>o :<C-u>Unite outline<CR>
nnoremap <silent> <leader>t :<C-u>Unite file_rec<CR>

let g:unite_source_history_yank_enable = 1
nnoremap <leader>y :<C-u>Unite history/yank<CR>

if executable('ack-grep')
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts = '--no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack')
  let g:unite_source_grep_command = 'ack'
  let g:unite_source_grep_default_opts = '--no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
endif

" Start insert.
let g:unite_enable_start_insert = 1
let g:unite_split_rule = 'botright'
let g:unite_source_file_mru_limit = 200
let g:unite_cursor_line_highlight = 'TabLineSel'
let g:unite_abbr_highlight = 'TabLine'

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " Overwrite settings.

  nmap <buffer> <ESC>      <Plug>(unite_exit)
  imap <buffer> jj      <Plug>(unite_insert_leave)
  "imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)

  imap <buffer><expr> j unite#smart_map('j', '')
  imap <buffer> <TAB>   <Plug>(unite_select_next_line)
  imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
  imap <buffer> '     <Plug>(unite_quick_match_default_action)
  nmap <buffer> '     <Plug>(unite_quick_match_default_action)
  imap <buffer><expr> x
          \ unite#smart_map('x', "\<Plug>(unite_quick_match_choose_action)")
  nmap <buffer> x     <Plug>(unite_quick_match_choose_action)
  nmap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
  imap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
  imap <buffer> <C-y>     <Plug>(unite_narrowing_path)
  nmap <buffer> <C-y>     <Plug>(unite_narrowing_path)
  nmap <buffer> <C-j>     <Plug>(unite_toggle_auto_preview)
  nmap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
  imap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
  nnoremap <silent><buffer><expr> l
          \ unite#smart_map('l', unite#do_action('default'))

  let unite = unite#get_current_unite()
  if unite.buffer_name =~# '^search'
    nnoremap <silent><buffer><expr> r     unite#do_action('replace')
  else
    nnoremap <silent><buffer><expr> r     unite#do_action('rename')
  endif

  nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')
  nnoremap <buffer><expr> S      unite#mappings#set_current_filters(
          \ empty(unite#mappings#get_current_filters()) ?
          \ ['sorter_reverse'] : [])

  " Runs "split" action by <C-s>.
  imap <silent><buffer><expr> <C-s>     unite#do_action('split')
endfunction

