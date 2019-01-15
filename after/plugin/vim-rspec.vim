" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
"
let g:rspec_command='!bin/rspec {spec}'
" change to iterm, default is terminal
let g:rspec_runner = "os_x_iterm2"
