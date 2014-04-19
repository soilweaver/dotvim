" Ward off unexpected changes and reset options from distro or resourcing.
set nocompatible

" ========== General Config ========== " 

set confirm		" Prevents you from quitting with unsaved files.
set number		" Display line numbers.
set history=1000	" Store lots of :cmdline history.
set ruler		" Show cursor position
set showcmd		" Show partial commands in status line.
set showmatch   	" Show matching parens/brackets
set showmode		" Show current mode at bottom.
set visualbell		" No sounds.
set gcr=a:blinkon0	" Disable cursor blink.

" Buffers can exist in the background without being in a window.
set hidden

"Enable syntax highlighting.
syntax on

" Change leader to a comma because backslash is unreliable.
" All \x commands turn into ,x
" Map leader must be set before plugins begin loading.
let mapleader=","

" ========== Pathogen plugin Initialization ========== " 
" Use pathogen to easily modify the runtime path to include all plugins
" under the ~/.vim/bundle directory
filetype off               " force reloading *after* pathogen loaded
call pathogen#helptags()
call pathogen#infect()

" ========== Turn Off Swap Files ========== "
set noswapfile
set nobackup
set nowb

" ========== Persistent Undo ========== "
" Keep undo history across sessions, by storing in file.
" Only works all the time. Not placed in .vim because git
" is being used to manage for different computers.
if has('persistent_undo')
  silent !mkdir ~/temp/vimbak > /dev/null 2>&1
  set undodir=~/temp/vimbak
  set undofile
endif

" ========== Indentation ========== "

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Automatically indent based on file type.
filetype indent plugin on

" Display tabs and trailing spaces visually.
set list listchars=tab:\ \ ,trail:·

set wrap	" Don't wrap lines.
"set linebreak	" Display long lines by breaking.

" ========== Folds ========== "
set foldmethod=indent	" Fold based on indent.
set foldnestmax=3	" Deepest fold is 3 levels.
set nofoldenable	" Don't fold by default.

" ========== Completion ========== "

set wildmode=list:longest    " Complete to ambiguity, like shell.
set wildmenu		" Enable ctrl-n and ctrl-p to scroll matches.
set wildignore=*.o,*.obj,*~	" Ignore when tab completing.
set wildignore+=*temp/vimbak*
set wildignore+=*sass-cache*
set wildignore+=DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif


" ========== Status Display ========== "

" Always display the status line, even if only one window is displayed
set laststatus=2

set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P


" ========== Encoding ========== "
"
" Set the default file encoding to UTF-8
set encoding=utf-8
