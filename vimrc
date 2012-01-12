" Yet another new .vimrc
" Stolen / copied from around the interwebs
"
" Use ':source $MYVIMRC' to quickley see changes


" Initialize pathogen
call pathogen#infect()

" Disable vi compatibility mode
set nocompatible

" Enable syntax highlighting
syntax on

" Enable filetype specific plugins and indenting
filetype plugin indent on


" Basic options
set encoding=utf-8                                      " Set encoding inside vim to 32bit UTF-8 encoded Unicode
"set modelines=0                                         " Prevent (some) modelines security exploits
"set autoindent                                          " Copy indent from current line when CR or o/O commands used
"set copyindent                                          " Autoindent copies indent format of previous line
"set nosmartindent                                       " Explicity don't try to guess how I want my indents
"set showmode                                            " Put a message on last line showing edit mode
"set showcmd                                             " Show partial commands
"set cursorline                                          " Highlight current row
"set ttyfast                                             " Improves smoothness w/ multiple windows
"set ruler                                               " Show ruler at bottom
"set backspace=indent,eol,start                          " Nothing can stop the backspace !

" Line numbers 3 spaces wide
set number
set numberwidth=3

" Status bar
set laststatus=2                                        " Always show status bar (w/ filename)

" Remember 1000 lines of command line history
set history=1000

" Save whole buffer for undo when reloading it
set undoreload=10000

" Use persistent undo file
set undofile
set undodir=~/.vim/.undo

" Activate backups
set backup
set backupdir=~/.vim/.backup

" Global swap file dir
set directory=~/.vim/.tmp

"set lazyredraw                                          " Don't redraw screen when executing macros/untyped cmds
"set autoread                                            " Automatically read file when changed outside vim
"set title                                               " Title of window set to value of 'titlestring'
"set mouse=a                                             " Use mouse everywhere
"set noerrorbells                                        " Don't make noise
"set clipboard+=unnamed                                  " Put contents of unnamed register in system clipboard
"set foldmethod=syntax                                   " Syntax highlighting items specify folds

" Whitespace
set nowrap                                              " No line wrapping
set list listchars=tab:>-,trail:·,extends:>,precedes:<  " Show tabs as >- and trailing space as ·

" Indent 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"set textwidth=80                                        " Break line after 80 characters (on whitespace only)

" Highlight column 100
" set colorcolumn=100

" Disable noise
set vb t_vb=

" Change leader from \ to ,
let mapleader = ","

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" H jumps to first non whitespace char on line, L to last (aka fake Home/End)
noremap H ^
noremap L g_

" Remove trailing spaces when exiting file
autocmd BufWritePre * :%s/\s\+$//e

" Open new horizontal split windows below current
set splitbelow

" Open new vertical split windows to the right
set splitright

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Show at least 3 lines above/below cursor
set scrolloff=3
" Show at least 7 columns next to cursor
set sidescrolloff=7
set sidescroll=1

" Colorscheme
set background=light
colorscheme Tomorrow-Night

" Nerdtree config
" Enable nice colors (not compatible with arrows)
" let NERDChristmasTree = 1

" Make it easy to see where we are
let NERDTreeHighlightCursorline = 1

" Make bookmarks visible
" let NERDTreeShowBookmarks = 1

" Show hidden files
let NERDTreeShowHidden = 1

" Don't hijack NETRW
let NERDTreeHijackNetrw = 0
let NERDTreeIgnore=['\.$', '\~$']

" No 'help?' and 'up a dir' etc.
let NERDTreeMinimalUI=1

" Use arrows for directories
let NERDTreeDirArrows=1

" Make F2 open NERDTree
nmap <F2> :NERDTreeToggle<CR>

" NERDCommenter
let NERDDefaultNesting = 0
let NERDRemoveExtraSpaces = 1
let NERDSpaceDelims = 1

"nmap <C-/> NERDComToggleComment<CR>
" Command-/ to toggle comments
" map <C-/> <plug>NERDCommenterToggle<CR>
" imap <C-/> <Esc><plug>NERDCommenterToggle<CR>i

" Bclose; do not let NERDTree take the whole window after closing the last
" buffer. See: http://www.reddit.com/r/vim/comments/m4cjp/i_have_this_issue_i_keep_running_into_with/
cmap bc Bclose
nmap <Leader>q :Bclose<CR>

" Temporarily disable :wq until I learn not to close the damn app the whole
" time when I only want to save
:cmap wq w


" Command-t
let g:CommandTMaxHeight=20

" git branch in statusline
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

