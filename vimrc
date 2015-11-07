execute pathogen#infect()
filetype on
filetype plugin on
set nocompatible
colorscheme lucius

autocmd FileType python 
set omnifunc=pythoncomplete#Complete
inoremap <C-space> <C-x><C-o>

" Because f*ck Esc
imap jj <Esc>

" NERDTree
nnoremap <F3> :NERDTreeToggle<CR>

"jedi-vim
let g:jedi#auto_initialization = 0
let g:jedi#popup_select_first = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_select_first = 0
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Others
noremap ; :
syntax on
set background=dark
set gfn=Monaco:h12
set guioptions-=r
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set autoindent
set hlsearch
set incsearch
set showmatch
set number
