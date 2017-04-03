" Configuration or vimrc file for mperezco

" Sintax Highlight with dark background
syntax on
set background=dark

" enable file type detection
filetype on

" Misc vars
set encoding=utf-8

" show number lines the title of the window and the ruler
"set number
set title
set ruler

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
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next or :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes) in terminal
"set backup		" Saves backup when overwritting a file
set wrap		" Wrap lines

" Default Tab Spacing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

highlight BadWhitespace ctermbg=red guibg=red

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
