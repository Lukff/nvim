" File manager - NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
