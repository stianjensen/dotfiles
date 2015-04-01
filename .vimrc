execute pathogen#infect()
"Turn on line numbers:
set number
"Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
autocmd FileType scss setlocal shiftwidth=2 tabstop=2

au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/syntax/yaml.vim
au BufNewFile,BufRead *.ucf so ~/.vim/syntax/ucf.vim
au BufNewFile,BufRead *.y so ~/.vim/syntax/happy.vim

"Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
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

cmap w!! %!sudo tee > /dev/null %

set list
set listchars=nbsp:…,tab:▸\ ,trail:·
"set lcs=eol:$,tab:\ \ 

colors jellybeans

autocmd BufWritePost *.py call Flake8()

let jshint2_save = 1
