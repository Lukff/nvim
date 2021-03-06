set number
set colorcolumn=80 textwidth=80 "80 characters line
set cursorline "highlight cursor line
set lazyredraw
set hidden "buffers
set wildmenu

"Default indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

"-> INDENTATION FOR SPECIFIC FILETYPES
"autocmd FileType html setlocal ts=2 sts=2 sw=2 et
"autocmd FileType css setlocal ts=2 sts=2 sw=2 et
"autocmd FileType javascript setlocal ts=4 sts=4 sw=4 et
"autocmd FileType python setlocal ts=4 sts=4 sw=4 et
"autocmd FileType c setlocal ts=4 sts=4 sw=4 et
"autocmd FileType vhdl setlocal ts=2 sts=2 sw=2 et

" Load colorscheme - Apprentice
colorscheme apprentice
