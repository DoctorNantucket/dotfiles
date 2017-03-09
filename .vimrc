syntax on
filetype plugin indent on
syntax enable
set number
set ruler
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible
set tabstop=2
set shiftwidth=2
set expandtab
set textwidth=120
set showmatch
set scrolloff=5
set comments=sl:/*,mb:\ *,elx:\ */
set backspace=2
set incsearch
set nomodeline
set cursorline
set autoread
filetype plugin on
filetype indent on
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
" " Press F5 to remove all trailing whitespace.
nnoremap <silent> <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
" Show apache highlighting for all .conf files
autocmd BufRead,BufNewFile *.conf set filetype=apache
set clipboard=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard
