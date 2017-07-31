execute pathogen#infect()
"Turn on line numbers:
set number
"Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
autocmd FileType scss setlocal shiftwidth=2 tabstop=2
autocmd FileType less setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2

"Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
map <buffer> <S-m> :w<CR>:make<CR>
nmap <buffer> fj :w<CR>:!ozc -x % &&./%<CR>
syntax on
filetype plugin indent on
filetype indent on

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set cursorline

set backspace=indent,eol,start

set statusline+=%#warningmsg#
set statusline+=%{ALEGetStatusLine()}
set statusline+=%*

let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_javascript_eslint_executable = 'eslint_d'

"let g:ale_open_list = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

set laststatus=2
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1

let g:rustfmt_autosave = 1

cmap w!! %!sudo tee > /dev/null %

set list
set listchars=nbsp:…,tab:▸\ ,trail:·
"set lcs=eol:$,tab:\ \ 

colors jellybeans
