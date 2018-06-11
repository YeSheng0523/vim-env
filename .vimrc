" override vi default, allow delete indet, eol and start
set backspace=indent,eol,start

" use spaces instead of tabs, enable autoindent with 4 spaces, display tab as 4 columns
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

" display line number
set number

" use LF
set fileformat=unix

" sytanx highlighting
syntax on

" colorscheme
colorscheme neverland-darker

" UTF8
set encoding=utf-8

" cursorline highlight
set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white

" enable folding
set foldmethod=indent
set foldlevel=99

" enable folding with the spacebar
nnoremap <space> za

" enable clipboard from OSX
set clipboard=unnamed
