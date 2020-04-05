" Set history length of ':' commands
set history=500

" Enable loading plugin files
filetype plugin on

" Enable loading ident files
filetype indent on

" Enable automatically read if file has been edited outside vim
set autoread

" Set leader key to ','
let mapleader=","

" Set leader key to ','
let mapleader=","

" Set number of lines to keep above and below cursor when scrolling
set so=7

" Enable wildmenu and set ignores
set wildmenu
set wildignore=*.o,*~,*.pyc,*/.git/*

" Enable ruler to show cursor position
set ruler

" Set number of lines for command line
set cmdheight=2

" Enable buffer hiding
set hidden

" Enable backspace behavior
set backspace=eol,start,indent

" Enable cursor movement wrapping
set whichwrap+=<,>,h,l

" Ignore case in search
set ignorecase

" Highlight all the matches
set hlsearch

" Override ignorecase if search patterns contains upper case
set smartcase

" Match as typing when searching
set incsearch

" Don't redraw screen when commands not typed
set lazyredraw

" Changes special characters used in search
set magic

" Briefly jump to matching bracket if on screen
set showmatch

" Set time in tenths of a second to show matching bracket
set mat=2

" Disable ringing bell for error messages
set noerrorbells

" Disable visual bell
set novisualbell

" Set visual bell to nothing
set t_vb=

" Time in milliseconds to wait for sequence to complete
set timeoutlen=500

" Enable syntax highlighting
syntax enable

" Enable 256 colors
set t_Co=256

" Set encoding to utf8
set encoding=utf8

" Set EOL formats
set fileformats=unix,dos,mac

" Use spaces for tabs
set expandtab

" Enables tab in front of a line to insert blanks based on others
set smarttab

" Number of spaces to each autoindent
set shiftwidth=4

" Number of spaces that a tab counts for
set tabstop=4

" Wrap long lines at a character instead of the last character that fits
set linebreak

" Maximum width of text being inserted
set textwidth=500

" Copy indent from current line when starting new line
set autoindent

" Do smart indenting when starting new line
set smartindent

" Enable line numbers
set number

" Enable saving undo history to file
set undofile
set undodir=/tmp

" Enable status line and set paste mode in status
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ \ \ Line:\ %l\ \ Column:\ %c

" Map paste mode
map <leader>pp :setlocal paste!<cr>
