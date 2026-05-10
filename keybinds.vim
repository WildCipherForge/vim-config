let mapleader = " "

nnoremap <leader>cd :Ex<CR>
inoremap jk <Esc>
vnoremap jk <Esc>

" disabling arrow keys
" <<-----
nnoremap <Left> :echo "No Left for you!"<CR>
vnoremap <Left> :<C-u>echo "No Left for you!"<CR>
inoremap <Left> <C-o>:echo "No Left for you!"<CR>

nnoremap <Right> :echo "No Right for you!"<CR>
vnoremap <Right> :<C-u>echo "No Right for you!"<CR>
inoremap <Right> <C-o>:echo "No Right for you!"<CR>

nnoremap <Up> :echo "No Up for you!"<CR>
vnoremap <Up> :<C-u>echo "No Up for you!"<CR>
inoremap <Up> <C-o>:echo "No Up for you!"<CR>

nnoremap <Down> :echo "No Down for you!"<CR>
vnoremap <Down> :<C-u>echo "No Down for you!"<CR>
inoremap <Down> <C-o>:echo "No Down for you!"<CR>

nnoremap <PageUp> :echo "No Page Up for you!"<CR>
vnoremap <PageUp> :<C-u>echo "No Page Up for you!"<CR>
inoremap <PageUp> <C-o>:echo "No Page Up for you!"<CR>

nnoremap <PageDown> :echo "No Page Down for you!"<CR>
vnoremap <PageDown> :<C-u>echo "No Page Down for you!"<CR>
inoremap <PageDown> <C-o>:echo "No Page Down for you!"<CR>
"----->>

"lsp related keybinds
"<<-----
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nnoremap <leader>rn :LspRename<CR>
"----->>
