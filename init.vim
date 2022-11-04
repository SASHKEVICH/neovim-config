:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set mouse=a
:set background=dark

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'ekalinin/Dockerfile.vim'
Plug 'https://github.com/morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
