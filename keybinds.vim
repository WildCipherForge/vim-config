let mapleader = " "

nnoremap <leader>cd :Ex<CR>

inoremap <expr> <CR> pumvisible() ? '\<C-y>' : '\<CR>'
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
