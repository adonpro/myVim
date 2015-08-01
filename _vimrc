"encode
set fileencodings=utf-8
set fileencoding=utf-8
set encoding=utf-8
set langmenu=en_US.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages en_US.utf-8

"interface
set number
set nobackup
set noswapfile
set linebreak
set expandtab
set autoindent
set autochdir
set smartindent
set go=
set lines=20
set columns=80
set tabstop=4
set scrolloff=4
set shiftwidth=4
set softtabstop=4
set showtabline=1
set shortmess=atI
set guifont=Menlo:h14
set guicursor=i-ci:ver1-Cursor/lCursor

"Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'gregsexton/MatchTag'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'EasyGrep'

call vundle#end()
filetype plugin indent on 

"solarized
syntax enable
set background=dark
colorscheme solarized

"NERDTree
map <F12> :NERDTreeToggle ~/workspace<CR>
map <F2> :NERDTreeFind<CR>
let NERDTreeMinimalUI=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

"jsbeautify
map <F5> :call JsBeautify()<CR>

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
