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

" Linting
Plug 'w0rp/ale'
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0

" Smart comments
Plug 'tomtom/tcomment_vim'

"" Syntax highlight
Plug 'sheerun/vim-polyglot'

" HTML
Plug 'alvan/vim-closetag', { 'for': ['html', 'xml', 'vue', 'jinja']}
Plug 'mattn/emmet-vim', { 'for': ['html', 'xml', 'vue', 'jinja']}
" CSS
Plug 'JulesWang/css.vim'
" Color preview
Plug 'ap/vim-css-color'
"Vue
Plug 'posva/vim-vue'
autocmd FileType vue syntax sync fromstart
let g:vue_disable_pre_processors=1
" Lisp
"Plug 'l04m33/vlime', {'rtp': 'vim/'}
Plug 'kovisoft/paredit', { 'for': ['lisp', 'scheme', 'clojure', 'racket']}
Plug 'junegunn/rainbow_parentheses.vim',{'on': 'RainbowParentheses'}
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme,racket RainbowParentheses
augroup END

" Colorscheme
Plug 'romainl/Apprentice'

" Plugins end
call plug#end()
