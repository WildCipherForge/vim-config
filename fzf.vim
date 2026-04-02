nnoremap <leader>ff :Files<CR>
nnoremap <leader>fo :History<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fq :CList<CR>
nnoremap <leader>fh :Helptags<CR>

nnoremap <leader>fs :Rg <C-r><C-w><CR>
nnoremap <leader>fg :Rg<Space>
nnoremap <leader>fc :execute 'Rg ' . expand('%:t:r')<CR>
nnoremap <leader>fi :Files ~/.vim<CR>
