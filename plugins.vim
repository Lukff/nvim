" Auto install Vim Plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

" Vim Plug Help
Plug 'junegunn/vim-plug'

" File manager
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

" Linting
Plug 'w0rp/ale'
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

" Tags navigator
Plug 'majutsushi/tagbar'

" Syntax highlight
Plug 'sheerun/vim-polyglot'
Plug 'JulesWang/css.vim'
"set iskeyword+=-
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
let g:pandoc#modules#disabled = ["folding"]
let g:pandoc#spell#enabled = 0

" Color preview
Plug 'ap/vim-css-color'

" Completion
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
"autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" HTML
Plug 'alvan/vim-closetag', { 'for': ['html', 'xml', 'vue']}
Plug 'mattn/emmet-vim', { 'for': ['html', 'xml', 'vue']}

" Lisp
"Plug 'l04m33/vlime', {'rtp': 'vim/'}
"Plug 'kovisoft/paredit', { 'for': ['lisp', 'scheme', 'clojure', 'racket']}
"Plug 'junegunn/rainbow_parentheses.vim',{'on': 'RainbowParentheses'}
"augroup rainbow_lisp
"  autocmd!
"  autocmd FileType lisp,clojure,scheme,racket RainbowParentheses
"augroup END

" Colorscheme
Plug 'romainl/Apprentice'

call plug#end()
