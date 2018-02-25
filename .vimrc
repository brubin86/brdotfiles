set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" " Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nvie/vim-flake8'
Plugin 'ervandew/supertab.git'
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
imap jj <ESC>
set tabstop=4
set background=dark
set shiftwidth=4
set undolevels=1000
set splitright
set autoindent
set copyindent
set t_ti= t_te=
filetype plugin indent on
autocmd filetype python set expandtab
" no swapfiles
set noswapfile
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" indenting for python and other stuff
au BufNewFile,BufRead *.py
     \ set tabstop=4 |
     \ set softtabstop=4 |
     \ set shiftwidth=4 |
     \ set textwidth=79 |
     \ set expandtab |
     \ set autoindent |
     \ set fileformat=unix |
" bad python whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let python_hightlight_all = 1
syntax on
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
" syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_mode_map = { 'mode' : 'passive', 'active_filetypes' : [], 'passive_filetypes' : [] }
noremap <C-w>E :SyntasticCheck<CR> : SyntasticToggleMode<CR>
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_wq = 0
" for nerdcommenter
let mapleader= ","
let g:jedi#use_tabs_not_buffers = 1
