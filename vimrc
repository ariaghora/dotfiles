execute pathogen#infect()
filetype off
colorscheme molokai
set t_Co=256

" ================== VUNDLE PARTY
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'lervag/vimtex'
Plugin 'godlygeek/tabular'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tommcdo/vim-exchange'

autocmd! bufwritepost .vimrc source %

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" ================== END OF VUNDLE PARTY

autocmd filetype python 
set omnifunc=pythoncomplete#Complete
inoremap <C-space> <C-x><C-o>

" Because f*ck Esc
imap jj <Esc>

" reindent
map <F7> mzgg=G`z

" NERDTree
nnoremap <F3> :NERDTreeToggle<CR>

noremap j gj
noremap k gk

"jedi-vim
let g:jedi#auto_initialization = 0
let g:jedi#popup_select_first = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_select_first = 0
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" ultisnips
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" vim-exchange
let g:exchange_no_mappings=1
nmap cx <Plug>(Exchange)
vmap X <Plug>(Exchange)
nmap cxc <Plug>(ExchangeClear)
nmap cxx <Plug>(ExchangeLine)

" Others
noremap ; :

" emmet
imap <C-k> <C-y>,

syntax on
set runtimepath^=~/.vim/bundle/ctrlp.vim
set background=dark
set gfn=Monaco:h11
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
set ruler
set nocompatible
set clipboard=unnamed
set guioptions= 
