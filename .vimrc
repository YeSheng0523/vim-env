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
colorscheme jellybeans

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

"nerdtree
nnoremap <silent> <tab> :NERDTree<CR>

" SGR protocol to scroll
set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

" enable powerline font and airline theme
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1

" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

" set split view below so linting docs will not pop up on top
set splitbelow

" start nerdtree when no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ignore pyc files
set wildignore+=*.pyc
let NERDTreeIgnore = ['\.pyc$']

" disable vim-elm keybinding
let g:elm_setup_keybindings = 0
