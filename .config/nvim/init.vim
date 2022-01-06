set number					" add line numbers
set relativenumber          " add relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a                 " mouse support
set termguicolors           " enable it for onedark theme to work
set cc=80                   " set an 80 column border for good coding style
set nocompatible            " disable compatibility to old-time vi
set ttyfast                 " Speed up scrolling in Vim
syntax on                   " syntax highlighting

"==== Plugin ========	
call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
"Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'sheerun/vim-polyglot'
Plug 'machakann/vim-highlightedyank'  "Highlight your yank area
set encoding=UTF-8

call plug#end()
" ===== end Plugin ======

let g:airline_powerline_fonts = 1
let g:NERDTreeDirArrowExpandable="+"        "fix display issue for NerdTree
let g:NERDTreeDirArrowCollapsible="~"
let g:airline_theme='onedark'
let g:onedark_termcolors=256
" ==== colorschemes ====
colorscheme onedark	
" ==== end colorschemes ====
map <F5> :NERDTreeToggle<CR>                " F5 to toggle NerdTree
nmap <F8> :TagbarToggle<CR>                 " F8 to toggle Tagbar       
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>" " tab to apply completion
