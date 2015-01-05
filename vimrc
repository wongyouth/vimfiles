" Using NeoBundle over Vundle is to automatically build vimproc,
" and vimproc is used for asynchronously loading files when you load file list
" for feature like Ctrl-P, which is implemented by Unite file_rec/async.
" So it will not freeze Vim when you work in a large project.
"------------------------------
" NeoBundle and bundles config
"------------------------------
source ~/.vim/neobundles.vim

" zsh not do correct path setting in OSX
set shell=/bin/bash

"------------------------------
" for windows vim with ruby1.9
"------------------------------
"let g:ruby_path = "C:\Ruby192\bin"

"----------------------------
" enbale file type detection
"----------------------------
filetype plugin indent on
syntax on

" fold {
"set foldmethod=syntax
"set foldlevel=2
"map <2-LeftMouse> za
" }

"--------------------
" colorscheme
"--------------------
" desert for terminal, use other scheme in gvimrc
color desert

"let g:solarized_termtrans = 1
"color solarized

"--------------------
" encoding
"--------------------
" To detect Chinese, and Japanese
set fencs=utf-8,cp936,sjis
set enc=utf-8

"--------------------
" normal setting
"--------------------
set number " show number

" relativenumber is new feature since Vim version 7.4
" if exists('+relativenumber')
"   set relativenumber
" endif

set autoindent " indent the same level of the previous line
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" This means that you can have unwritten changes to a file and open a new file
" using :e, without being forced to write or undo your changes first.
set hidden

" show command menu, work great with snapmate-snippets
set wildmenu

" do not wrap line
set nowrap

" do not create backup, swap file, use git for version managment
set nobackup
set noswapfile

if has('mac')
  source $HOME/vimfiles/mvimrc
endif

"-----------------------
" status line setting
"-----------------------
set laststatus=2
" comment out since using airline
"set statusline=%<%f\ %h%m%r%=[TYPE=%Y]\ [FORMAT=%{&ff}]\ [ENC=%{&enc}]\ [FENC=%{&fenc}]\ %-14.(%l,%c%V%)\ %P

"--------------------------------
" invisible character setting
"--------------------------------
"unicode for \u25b8 for `▸', \u00ac for `¬'
"set listchars=tab:▸\ ,eol:¬
set listchars=tab:▸\ 
set list

" the default leader is '\', you can change it to anything else if you want.
" mapleader = ','

" nnoremap toggle, or use F4
nnoremap <leader>l :set list!<CR>
" trim trailing whitespace
nnoremap <leader>W :%s/\s\+$//gc<CR>
" trim spaces in line
nnoremap <leader>S :%s/^\s\+$//gc<CR>
" delete space line
nnoremap <leader>D :%s/\n\{2,\}/\r/gc<CR>

"--------------------------------------------------------
" highline current line & column
" DOES NOT WORK with colorscheme solarized and blackboard
"--------------------------------------------------------
set cursorline
set cursorcolumn
highlight cursorline term=underline cterm=underline ctermbg=0 gui=underline guibg=NONE guisp=grey40
highlight cursorcolumn guibg=grey25
if has("autocmd")
  "au WinEnter * set cursorline cursorcolumn
  au BufEnter * set cursorline cursorcolumn
endif

nnoremap <silent> <leader>cur :set cursorline! cursorcolumn!<cr>

" hightlight search
set incsearch
set hlsearch
nnoremap <silent> <esc><esc> :noh<cr>

"------------------------
" for quick load vimrc
"------------------------
noremap <leader>vc :tabedit $MYVIMRC<cr>
noremap <leader>ve :tabedit $HOME/vimfiles/vimrc<cr>
noremap <leader>vg :tabedit $HOME/vimfiles/gvimrc<cr>
noremap <leader>vm :tabedit $HOME/vimfiles/mvimrc<cr>

" filetype detection
if has("autocmd")
  " set rxls filetype to ruby
  autocmd bufnewfile,bufread *.rxls set filetype=ruby

  " set thor filetype to ruby
  autocmd bufnewfile,bufread *.thor,*.ru,Gemfile,Gemfile.lock set filetype=ruby

  " set god filetype to ruby
  autocmd bufnewfile,bufread *.god set filetype=ruby

  " set es6 as javascript
  autocmd BufRead,BufNewFile *.es6 set filetype=javascript
endif

"-----------------------
" Shortcut keys mappings
"-----------------------
" search & replace current word under cursor
nnoremap <F3> /<c-r><c-w><cr>
nnoremap <C-F3> /<c-r><c-w><cr>N:%s/<c-r><c-w>//gc<left><left><left>
nnoremap <D-F3> /<c-r><c-w><cr>N:%s/<c-r><c-w>//gc<left><left><left>
" search & current selection, support new-line
vnoremap <F3> "sy/<c-r>=substitute(@s,'\n','\\n','g')<cr>/<cr>
vnoremap <C-F3> "sy/<c-r>=substitute(@s,'\n','\\n','g')<cr>/<cr>N:%s/<c-r>=substitute(@s,'\n','\\n','g')<cr>//gc<left><left><left>
vnoremap <D-F3> "sy/<c-r>=substitute(@s,'\n','\\n','g')<cr>/<cr>N:%s/<c-r>=substitute(@s,'\n','\\n','g')<cr>//gc<left><left><left>

set pastetoggle=<F4> " sane indentation on pastes when in insert mode
" toggle showing number, relativenumber and list
nnoremap <silent> <F4> :set nu!<CR>:set rnu!<CR>:set list!<CR>
" toggle relativenumber
if exists('+relativenumber')
  nnoremap <silent> <F10> :set rnu!<CR>
endif
" toggle mouse with F12, so selection can to be copied to system clipboard
set mouse=a
" set windows only
nnoremap <silent> <F11> :on<CR>

"--------------------------------
" copyed from junas vim config
"--------------------------------
" format the entire file
nmap <leader>fef ggVG=

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" Some helpers to edit mode
" http://vimcasts.org/e/14
nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>
nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
nmap <leader>et :tabe <C-R>=expand('%:h').'/'<cr>

" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
nmap <silent> <leader>ul :t.<CR>Vr=

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" use tjump instead of tag
nnoremap <C-]> g<C-]>
vnoremap <C-]> g<C-]>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

"-------------------------------
" Windows switch with Ctrl+↑↓←→
"-------------------------------
noremap <silent> <C-left> <esc><C-W><left>
noremap <silent> <C-right> <esc><C-W><right>
noremap <silent> <C-up> <esc><C-W><up>
noremap <silent> <C-down> <esc><C-W><down>

" Tab navigation {
noremap <silent> tf :tabfirst<cr>
noremap <silent> tl :tablast<cr>
noremap <silent> tp :tabprevious<cr>
noremap <silent> tn :tabnext<cr>
noremap <silent> tc :tabclose<cr>
noremap <silent> ts :tab split<cr>
noremap te :tabedit<space>
noremap tm :tabmove<space>
" }


" Rails {
nnoremap <silent> rdm :Rake db:migrate<cr>
nnoremap <silent> rds :Rake db:seed<cr>
" convert spaces to underline, lower all characters
nmap <silent> rs2u cs"'vi':s/\%V\s/_/g<cr>``crs
" add `flashes.` in front of flash message
nmap <silent> rfla rs2uF'aflashes.<esc>
" add t() to surround message
nmap <silent> r18t F'vf'S)it<esc>f'l
" Rails flash message
nmap <silent> rfm rflar18t
" }

" Fugitive {
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gi :Git<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gp :Git push<CR>
" }

"----------------------------
" Abbreviation
"----------------------------
" you may check out the snippets first.

" Filter {
autocmd filetype html setlocal equalprg=html-beautify\ -f\ -\ -s\ 2
autocmd filetype css setlocal equalprg=css-beautify\ -f\ -\ -s\ 2
autocmd filetype js setlocal equalprg=js-beautify\ -f\ -\ -s\ 2
autocmd FileType json setlocal equalprg=python\ -m\ json.tool

" To turn Datetime to a String
nnoremap rt2s :s/\(\d\{4}-\d\d\-\d\d \d\d:\d\d:\d\d[^,]*\),/"\1",/g<cr>
autocmd FileType ruby setlocal equalprg=ruby\ -rawesome_print\ -e\ 'ap(eval(STDIN.read))'
" }

" Supporting customized script {
if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif
" }

" allow arrow to go to previous or next line
set whichwrap+=<,>,[,],h,l

