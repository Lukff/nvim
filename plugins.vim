" Auto install Vim Plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.local/share/nvim/plugged')
" File manager
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Language Servers and autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = [ 'coc-vetur',
      \                         'coc-tsserver',
      \                         'coc-phpls'
      \                       ]

set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Smart comments
"Plug 'tomtom/tcomment_vim'

"set statusline+=%{FugitiveStatusline()}

"" Syntax highlight
"Plug 'sheerun/vim-polyglot'

" HTML
"Plug 'alvan/vim-closetag', { 'for': ['html', 'xml', 'vue', 'jinja']}
"Plug 'mattn/emmet-vim', { 'for': ['html', 'xml', 'vue', 'jinja']}
" CSS
" Plug 'JulesWang/css.vim'
" Color preview
" Plug 'ap/vim-css-color'
"Vue
" Plug 'posva/vim-vue'
" autocmd FileType vue syntax sync fromstart
" let g:vue_disable_pre_processors=1

" Git
Plug 'tpope/vim-fugitive'
" Statusline
Plug 'vim-airline/vim-airline'
" Colorscheme
Plug 'romainl/Apprentice'

" Plugins end
call plug#end()
