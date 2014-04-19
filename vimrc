" Ward off unexpected changes and reset options from distro or resourcing.
set nocompatible

" Use pathogen to easily modify the runtime path to include all plugins under
" the ~/.vim/bundle directory
filetype off                    " force reloading *after* pathogen loaded
call pathogen#helptags()
call pathogen#infect()

" Always display the status line, even if only one window is displayed
set laststatus=2

set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

set background=dark
set guioptions-=T
set wrap

silent execute '!rm -f ~/temp/vimbak/*'
set backupdir=~/temp/vimbak
set directory=~/temp/vimbak
set bk

" Choose a different font, for my peeps health.
"set guifont=Nimbus\ Mono\ L\ Bold\ 13
set guifont=Andale\ Mono\ 11

" Set the default file encoding to UTF-8
set encoding=utf-8

"Enable syntax highlighting.
syntax on

" Colorscheme
:colorscheme desert

" Automatically indent based on file type.
filetype indent plugin on

" Allow backspacing over autoindent, line breaks, and start of insert.
set backspace=indent,eol,start

" Lines for bash support plugin
let g:BASH_Authorname    = 'Oliver Savage'
let g:BASH_Email         = 'oliver.savage@gmail.com'
let g:BASH_Company       = 'Soilweavers'

" This affects how text is displayed not how it is actually formed.
" It makes it so that words wrap without being split.
set linebreak

" Better command-line completion.
set wildmenu

set confirm		" Prevents you from quitting with unsaved files.
set number		" Display line numbers.
set ruler		" Show cursor position
set esckeys     	" Allow cursor keys in insert mode
set showcmd		" Show partial commands in status line.
set showmatch   	" Show matching parens/brackets
set visualbell		"Mind your manners

" Reset the terminal code for visual bell, no flash no beep. Yay!
set t_vb=

setlocal comments-=:#
