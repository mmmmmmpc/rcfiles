" Configuration or vimrc file for migpc

" Sintax Highlight with dark background
syntax on
set background=dark

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Indentation rules according to the detected filetype.
if has("autocmd")
  filetype indent on
endif

" Behaviour changes
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next or :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes) in terminal
"set backup		" Saves backup when overwritting a file
set wrap		" Wrap lines

set softtabstop=2
"set shiftwidth=4
"set tabstop=4
"set expandtab

