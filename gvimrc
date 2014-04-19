set nocompatible
set laststatus=2

" backspace not working after switching to aur version vim-gtk
"set backspace=indent,eol,start

set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

set background=dark
set guioptions-=T
set wrap

"silent execute '!rm -f ~/temp/vimbak/*'
set backupdir=~/temp/vimbak
set directory=~/temp/vimbak
set bk

" Choose a different font, for my peeps health.
"set guifont=Nimbus\ Mono\ L\ Bold\ 13
set guifont=Andale\ Mono\ 11

" Set the default file encoding to UTF-8
set encoding=utf-8

syntax on

" Colorscheme
:colorscheme desert

" Automatically indent based on file type
filetype on
filetype indent on
filetype plugin on

" Lines for bash support plugin
let g:BASH_Authorname    = 'Oliver Savage'
let g:BASH_Email         = 'oliver.savage@gmail.com'
let g:BASH_Company       = 'Soilweavers'

" This affects how text is displayed not how it is actually formed.
" It makes it so that words wrap without being split.
set linebreak

set confirm		" Prevents you from quitting with unsaved files.
set number		" Display line numbers.
set ruler		" Show cursor position
set esckeys     	" Allow cursor keys in insert mode
set showcmd		" Show (partial) command in status line
set showmatch   	" Show matching parens/brackets
set noerrorbells visualbell "Mind your manners

setlocal comments-=:#
