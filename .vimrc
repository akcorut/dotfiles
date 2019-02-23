set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

" UltiSnips Settings
let g:UltiSnipsExpandTrigger='<c-b>' 
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

let g:ycm_key_list_select_completion =["<tab>"]
let g:ycm_key_list_previous_completion = ["<s-tab>"]

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Lightline settings
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" Color scheme
syntax enable
set background=light
colorscheme solarized

" Spaces & Tabs 
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set backspace=2
	
" UI Layout 
set number              " show line numbers
set nocursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
