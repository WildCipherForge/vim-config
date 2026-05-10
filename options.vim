set number
set relativenumber

filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set showmatch
set signcolumn=yes


set backspace=indent,eol,start

syntax on

autocmd BufNewFile,BufRead *.css  setlocal filetype=css
autocmd BufNewFile,BufRead *.scss setlocal filetype=scss
autocmd BufNewFile,BufRead *.less setlocal filetype=less
